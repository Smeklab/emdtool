%example_VIPM_load_from_dxf Example dxf file import.
%
% Imports the dxf file of the rotor exported in example_VIPM1.m
%
% Importing dxf files is very much manual work, for now. Some automatic
% functionality is provided to
%   * Merge duplicate point, line, and arc definitions often encountered in
%   dxf files.
%   * Checking for T-intersections of lines and arcs and splitting them
%   accordingly. NOTE: X-intersections are not handled and will result in
%   invalid geometries.
%   * parsing imported lines and arcs into closed surfaces
%
% The manual steps then include:
%   * Creating the required Materials, Domains, and Circuits
%   * Picking Surfaces by their coordinates and adding them to the correct
%   Domains
%       * Holes in Surfaces must also be set manually.
%   * Picking periodic Lines and setting their periodicity
%   * Picking airgap curves and setting their characteristic length (often
%   smaller and reasonable automatically-parsed length) and naming them
%   'n_ag'
%   * Setting characteristic lengths either automatically, manually, or a
%   combination of both like in this example.

%setting basic required dimensions
%example_Stator_6P_100kWish;
dim.magnet_material = PMlibrary.create('N42SH');
dim.rotor_core_material = dim.stator_core_material;
dim.shaft_material = 1;

%this could be automated!
dim.angle_mag = pi/180 * 20;

rotor = SynRotorBase();
rotor.dimensions = dim;


PLOT_RESULTS = true; %plot some debug-friendly pics?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% reading dxf file, parsing Curves and Surfaces

reader = dxfreader('VIPM1.dxf');

parser = GeoParser();
[parser.points, parser.curves]  = reader.get_entities();

parser.parse_split_curves(1e-6); %should not do anything here, but useful
%with many other dxfs


surfaces = parser.parse_surfaces();
if PLOT_RESULTS
    figure(1); clf; hold on; axis equal;
    title('Imported Curves and Surfaces')
    for c = parser.curves
        c.plot();
    end


    %filling surfaces, with rather random colors
    for k = 1:numel(surfaces)
        s = surfaces(k);
        s.fill(k, 'facealpha', 0.5);
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting surfaces

smag_cw = parser.surface_at([0.06; 0.016]);
smag_ccw = parser.surface_at([0.043; 0.046]);

score = parser.surface_at([0.04; 0.02]);
sshaft = parser.surface_at([0.016; 0.01]);

%air pockets
sair1 = parser.surface_at([0.074; 4e-3]);
sair2 = parser.surface_at([0.049; 0.0255]);
sair3 = parser.surface_at([0.046; 0.029]);
sair4 = parser.surface_at([0.0405; 0.062]);

score.add_hole(smag_cw, smag_ccw, sair1, sair2, sair3, sair4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting interesting / important curves

%characteristic length to set for the airgap
lcar_ag = Airgap.characteristic_length(rotor);

% two airgap arcs:
cag = parser.closest_arc([0.075; 0.02]);
cag.name = 'n_ag';
cag.set_characteristic_length(lcar_ag);
cag = parser.closest_arc([0.054; 0.057]);
cag.name = 'n_ag';
cag.set_characteristic_length(lcar_ag);

%periodic shaft boundaries
lper_cw = parser.closest_line([0.014; 0]);
lper_ccw = parser.closest_line([7e-3; 0.0125]);
lper_cw.set_radially_periodic_with(lper_ccw);

%periodic core boundaries
lper_cw = parser.closest_line([0.5; 0]);
lper_ccw = parser.closest_line([0.027; 0.047]);
lper_cw.set_radially_periodic_with(lper_ccw);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating Domains and Materials

apole = pi / dim.p;

%materials
mcore = Material.create( dim.rotor_core_material );
mmag = Material.create( dim.magnet_material );
mair = Material.create( 0 );
mshaft = Material.create(dim.shaft_material);

rotor.add_material( mcore, mmag, mair, mshaft );

%domains
Core = Domain('Core', mcore, score);
Shaft = Domain('Shaft', mshaft, sshaft);

Magnet_cw = Domain('Magnet_1', mmag, smag_cw);
Magnet_cw.remanence_direction =  apole/2 + dim.angle_mag;

Magnet_ccw = Domain('Magnet_2', mmag, smag_ccw);
Magnet_ccw.remanence_direction = apole/2 - + dim.angle_mag;

Air = Domain('Air', mair);
Air.add_surface(sair1, sair2, sair3, sair4);

rotor.add_domain( Core, Shaft, Magnet_cw, Magnet_ccw, Air);

%circuits
%{
MagnetCircuit = ExtrudedBlockCircuit('Magnets');
MagnetCircuit.block_height = dim.magnet_height;

MagnetCircuit.add_conductor(SolidConductor(Magnet_cw));
MagnetCircuit.add_conductor(SolidConductor(Magnet_ccw));
rotor.add_circuit(MagnetCircuit);
%}

%shaft circuit
if mshaft.electrical_conductivity > 0
    ShaftCircuit = SheetCircuit('Shaft');
    ShaftCircuit.add_conductor(SolidConductor(Shaft));
    rotor.add_circuit(ShaftCircuit);
end


if PLOT_RESULTS
    figure(2); clf; hold on; box on; axis equal;
    title('Created geometry')
    rotor.plot_geometry();
end


%automatically parsing lcar to all except airgap curves
GeoHelper.parse_characteristic_length(rotor, 10e-3, 1e-3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% meshing and visualizing

rotor.mesh_geometry('delete_files', true);
figure(3); clf; hold on; axis equal;
title('Meshed geometry')
rotor.visualize('linestyle', '-');


motor = RFmodel(dim, stator, rotor);

%visualizing motor model, checking that airgap mesh and periodic lines seem
%correct
figure(4); clf; hold on; box on; axis equal tight;
title('Motor model')
motor.visualize('plot_ag', true, 'plot_nodes', true);