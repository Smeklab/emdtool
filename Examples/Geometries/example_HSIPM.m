%example_HSIPM Example of the HSIPM template.

%getting basic + stator dimensions
example_Stator_4P;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

dim.delta = 2e-3; %using a larger airgap as we're dealing with a high-speed machine

dim.Rout = dim.Sin - dim.delta;
dim.Rin = 15e-3;

%dim.w_magnet = 14e-3;
dim.h_magnet = 5e-3;
dim.N_magnets = 2;


dim.w_bridge = 1e-3;
dim.w_bridge_out = 1e-3;
dim.w_bridge_interpole_half = 2e-3;


%materials:
dim.rotor_core_material = SteelLibrary.create('M270-50A');
dim.magnet_material = PMlibrary.create('N35SH');
dim.shaft_material = 1;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% visualizing

stator = Stator(dim);
rotor = HSIPM(dim);


%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

return

motor = RFmodel(dim, stator, rotor);
figure(2); clf; hold on; box on; axis equal tight;
motor.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);