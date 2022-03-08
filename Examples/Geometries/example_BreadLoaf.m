%example_BreadLoaf Example of the BreadLoaf rotor template

%getting basic dimensions from another example
example_Stator_10P_inrunner;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

dim.Rout = dim.Sin - dim.delta; 
dim.Rin = 20e-3;

dim.h_pm = 5e-3;
dim.w_pm = 13e-3;

dim.rotor_core_material = dim.stator_core_material;
dim.rotor_stacking_factor = 0.95;
dim.magnet_material = PMlibrary.create('N42SH');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating geometry

rotor = BreadloafRotor(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

%return

%meshing
rotor.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();
rotor.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);
