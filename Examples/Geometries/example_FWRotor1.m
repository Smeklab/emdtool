%example_FWRotor1 Example of the FWRotor1 template.

dim = struct();

dim.p = 3;
dim.symmetry_sectors = dim.p*2;
dim.delta = 1.5e-3;
dim.leff = 150e-3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stator dimensions

PHASES = 3;
SLOTS_PER_POLE_AND_PHASE = 2;
AIRGAP_FLUX_DENSITY_FOR_SIZING = 1;

%slots
dim.Qs = PHASES * 2*dim.p * SLOTS_PER_POLE_AND_PHASE;

%winding
winding = DistributedWindingSpec(dim);
winding.N_layers = 1;
winding.N_series = 12;
winding.phases = PHASES;
winding.a = dim.p*2;
dim.stator_winding = winding;

%inner and outer radius
dim.Sin = 157e-3/2; %inner radius of stator
if dim.p == 1
    dim.Sout = dim.Sin / 0.5;
elseif dim.p == 2
    dim.Sout = dim.Sin / 0.6;
else
    %very rough
    dim.Sout = dim.Sin / 0.67;
end

%slot opening and bottom specs
dim.htt_taper_s = 1e-3; %slot opening, straight part before taper
dim.htt_s = 1.5e-3;
dim.wso_s = 2e-3;
dim.r_slotbottom_s = 1.2e-3;

%yoke height
hys = 2*pi*dim.Sin / (2*dim.p) * AIRGAP_FLUX_DENSITY_FOR_SIZING * 2/pi / 2 / 1.5;
dim.hslot_s = abs(dim.Sout - dim.Sin) - hys;
dim.wtooth_s = 2*pi*(dim.Sin + dim.htt_s)/dim.Qs * 0.6;

%materials
dim.stator_core_material = M250_35A;
dim.stator_stacking_factor = 1;
dim.stator_wedge_material = 0;

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
%dim.r_poleshoe = dim.Rout*0.98; %poleshoe arc radius
dim.w_poleshoe = 65e-3; %pole shoe width
dim.h_poleshoe = 15e-3; %pole shoe height

%excitation winding window size
dim.field_coil_x_separation = 5e-3;
dim.field_coil_y_separation = 5e-3;

dim.w_fieldwinding = 6e-3; 
dim.h_fieldwinding = 6e-3;

%pole body size
dim.h_pole = 27e-3; %height
dim.w_pole = 30e-3; %width

%rotor materials
dim.rotor_core_material = M250_35A;
dim.rotor_stacking_factor = 0.95;
dim.shaft_material = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating geometry

rotor = SuperconductingRotor1(dim);
stator = Stator(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
stator.plot_geometry();
rotor.plot_geometry();


return
