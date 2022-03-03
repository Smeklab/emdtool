%example_SPM1 Example of the SPM1 rotor template

%getting basic dimensions from another example
example_Stator_10P_inrunner;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

dim.Rout = dim.Sin - dim.delta; 
dim.Rin = 20e-3;

dim.hpm = 5e-3;
dim.is_halbach = false;
dim.alpha_pm = 0.8; %PM pitch


dim.rotor_core_material = dim.stator_core_material;
dim.shaft_material = 1;
dim.magnet_material = PMlibrary.create('N42SH');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating geometry

rotor = SPM1(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();

%meshing
rotor.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();
rotor.visualize();

%saving visualization
emdtool_export_example_fig(rotor);
