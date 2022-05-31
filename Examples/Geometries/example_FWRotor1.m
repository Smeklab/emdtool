%example_FWRotor1 Example of the FWRotor1 template.

%example_Stator_6P_100kWish; %basic dimensions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%field winding spec
field_winding = FieldWindingSpec(dim);
field_winding.filling_factor = 0.6;
field_winding.N_series = 60; %number of turns per pole
%field_winding.end_winding_length_per_conductor = pi*70e-3/2; %to be automatic
dim.rotor_winding = field_winding;

%rotor main dimensions
dim.Rout = dim.Sin - dim.delta; %outer radius
dim.Rin = 35e-3; %shaft radius

%pole face dimensions
dim.r_poleshoe = dim.Rout*0.98; %poleshoe arc radius
dim.w_poleshoe = 65e-3; %pole shoe width
dim.h_poleshoe = 15e-3; %pole shoe height

%excitation winding window size
dim.w_fieldwinding = 13e-3; 
dim.h_fieldwinding = 12e-3;

%pole body size
dim.h_pole = 27e-3; %height
dim.w_pole = 30e-3; %width

%rotor materials
dim.rotor_core_material = M250_35A;
dim.rotor_stacking_factor = 0.95;
dim.shaft_material = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating geometry

rotor = FWRotor1(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
rotor.plot_geometry();
return

%meshing
rotor.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();
rotor.visualize();

return
motor = RFmodel(dim, stator, rotor);
figure(3); clf; hold on; box on; axis equal tight;
motor.visualize();

%saving visualization
emdtool_export_example_fig(rotor);