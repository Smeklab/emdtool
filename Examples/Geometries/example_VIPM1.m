%example_VIPM1 Example of the VIPM1 template.

%getting basic + stator dimensions
example_Stator_6P_100kWish;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

% rotor specs
dim.Rout = dim.Sin - dim.delta;
dim.Rin = 30e-3;

dim.w_mag = 30e-3;
dim.h_mag = 6e-3;
dim.angle_mag = pi/180 * 20;

dim.w_bridge_interpole = 5e-3;
dim.w_bridge_center = 2e-3;
dim.w_bridge_out = 1e-3;

dim.w_pocket_in = 2e-3;
dim.w_pocket_out = 1e-3;

dim.magnet_material = PMlibrary.create('N42SH');
dim.rotor_core_material = dim.stator_core_material;
dim.shaft_material = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating model

rotor = VIPM1(dim);

%export dxf
%rotor.export_dxf('VIPM1.dxf');

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

%meshing
rotor.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();
rotor.visualize();

motor = RFmodel(dim, stator, rotor);
figure(3); clf; hold on; box on; axis equal tight;
motor.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);
