%example_Stator_4P
%
% Example of the Stator geometry template; a 4-pole industrial-style stator
% with distributed winding


dim = struct();

%general dimensions
dim.p = 1;
dim.symmetry_sectors = dim.p*2;
dim.delta = 1e-3;
dim.leff = 100e-3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stator dimensions

SLOTS_PER_POLE_AND_PHASE = 4;
AIRGAP_FLUX_DENSITY_FOR_SIZING = 1;

%slots
dim.Qs = 3 * 2*dim.p * SLOTS_PER_POLE_AND_PHASE;

%winding
winding = DistributedWindingSpec(dim);
winding.N_layers = 2;
winding.N_series = 12;
dim.stator_winding = winding;

%inner and outer radius
dim.Sout = 50e-3;
dim.Sin = dim.Sout * 0.5;


dim.hys = 2*pi*dim.Sin / (2*dim.p) * AIRGAP_FLUX_DENSITY_FOR_SIZING * 2/pi / 2 / 1.5;


dim.stator_core_material = SteelLibrary.create('M270-50A');
dim.stator_stacking_factor = 0.95;


return
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating and plotting geometry

%creating geometry
stator = SlotlessStator(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
stator.plot_geometry();

%meshing
stator.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();

%saving visualization
emdtool_export_example_fig(stator);
