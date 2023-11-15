

example_SlotlessStator;

%rotor dimensions
dim.Rout = dim.Sin - dim.delta;

dim.h_sleeve = 1e-3;

dim.magnet_material = PMlibrary.create('N42UH');
dim.sleeve_material = 22; %Inconel sleeve

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% visualizing

stator = SlotlessStator(dim);
rotor = MassivePM(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

motor = RFmodel(dim, stator, rotor);
figure(2); clf; hold on; box on; axis equal tight;
motor.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);