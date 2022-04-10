%Toy geometry of a 125 kW-level traction-style IPM.
%
% Example focuses on different winding model examples:
%   * infinitely stranded
%   * wire, stranded model
%   * hairpin

dim = struct();

dim.p = 3;
dim.symmetry_sectors = dim.p*2;
dim.delta = 1.5e-3;
dim.leff = 150e-3;

dim.temperature_stator = 120;
dim.temperature_rotor = 120;

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

%setting winding model
%winding_model = 'stranded';
%winding_model = "wire";
winding_model = "hairpin";
if winding_model == "stranded"
    %infinitely stranded-->do nothing
elseif winding_model == "wire"
    %wire-wound, post-processing loss model
    layout = RoundWireLayout();
    layout.diameter = 0.8e-3;

    winding.wires_in_hand = 10; %42% copper fill factor
    winding.layout_spec = layout;
elseif winding_model == "hairpin"    
    %setting rectangular slots
    dim = rmfield(dim, 'wtooth_s');
    dim.wslot_s = 2*pi*(dim.Sin + dim.htt_s)/dim.Qs * 0.45;
    dim.r_slotbottom_s = 0;

    winding.N_series = 2;
    winding.N_layers = 2;
    winding.a = 2;
    winding.winding_model_type = defs.solid;

    layout = RectangularLayout();
    layout.conductor_width = dim.wslot_s - 400e-6;
    layout.conductor_height = (dim.hslot_s-dim.htt_s)/4 - 400e-6;

    winding.layout_spec = layout;
end


%materials
dim.stator_core_material = M250_35A;
dim.stator_stacking_factor = 1;
dim.stator_wedge_material = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

%see 'help VIPM1' for explanations

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
% assembling geometries and models

stator = Stator(dim);
rotor = VIPM1(dim);

%plotting geometries
figure(1); clf; hold on; box on; axis equal;
stator.plot_geometry();
rotor.plot_geometry();


%meshing
stator.mesh_geometry();
rotor.mesh_geometry();

motor = RFmodel(dim, stator, rotor);

figure(2); clf; hold on; box on; axis equal;
motor.visualize('plot_axial', false, 'plot_ag', false, 'linestyle', 'none');