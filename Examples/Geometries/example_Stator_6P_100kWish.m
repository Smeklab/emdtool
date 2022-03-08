%example_Stator_6P_100kWish

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

%inner and outer diameter
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
% assembling geometries and models

stator = Stator(dim);

%plotting geometries
figure(1); clf; hold on; box on; axis equal;
stator.plot_geometry();

%meshing
stator.mesh_geometry();

