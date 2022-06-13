%example_LinearStator Example of the LinearStator template.

dim = struct();


%inner and outer radii
dim.ROUT = 200e-3/2;
dim.RIN = dim.ROUT/sqrt(3);
dim.leff = (dim.ROUT - dim.RIN); %effective length

dim.Qs = 12; %number of stator slots
dim.p = 5; %poles
dim.delta = 1e-3; %airgap length

%slice radius to analyze
dim.slice_radius = (dim.ROUT + dim.RIN)/2;
dim.axial_symmetry_sectors = 2; %YASA-style machine

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stator dimensions

%winding
winding = ConcentratedWindingSpec(dim);
winding.phases = 3;
winding.N_layers = 2; %number of winding layers
winding.N_series = 1; %number of turns per coil
winding.conductor_material = 23; %aluminum

dim.stator_winding = winding;
dim.symmetry_sectors = winding.symmetry_period();


%stator dimensions
dim.stator_topology = 'YASA';
dim.w_slot_s = 2*pi*dim.slice_radius/dim.Qs*0.5; %slot width
dim.w_slotOpening_s = 0.5*dim.w_slot_s; %slot opening width

dim.htt_s = 6e-3; %tooth tip height, total
dim.htt_taper_s = dim.htt_s/2; %tooth tip height, straight part

hslot = 4*dim.w_slot_s; %slot depth

dim.l_tooth_s = hslot + 2*dim.htt_s; %total stator core length

%materials
dim.stator_core_material = SteelLibrary.create('M270-35A');
dim.stator_stacking_factor = 0.95;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% geometry

stator = YASAStator(dim);

%this is needed to stop geometries from overlapping:
stator.y_shift_points(-dim.l_tooth_s/2);


figure(1); clf; hold on; box on;
stator.plot_geometry();