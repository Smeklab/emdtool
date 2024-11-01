%example_CoatedRotor Example of the CoatedRotor template.

%getting basic + stator dimensions
example_Stator_4P;

dim.temperature_stator = 120; dim.temperature_rotor = 180;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

dim.delta = 2e-3; %using a larger airgap as we're dealing with a high-speed machine

dim.Rout = dim.Sin - dim.delta;
dim.Rin = 15e-3;


dim.h_coat = 2e-3; %rotor coat thickness

%materials:
dim.rotor_coat_material = 18; %copper
dim.rotor_core_material = SteelLibrary.create('M270-50A');
dim.shaft_material = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% visualizing

stator = Stator(dim);
rotor = CoatedRotor(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

motor = RFmodel(dim, stator, rotor);
figure(2); clf; hold on; box on; axis equal tight;
motor.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);