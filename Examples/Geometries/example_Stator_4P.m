%example_Stator_4P
%
% Example of the Stator geometry template; a 4-pole industrial-style stator
% with distributed winding


dim = struct();

%general dimensions
dim.p = 2;
dim.symmetry_sectors = dim.p*2;
dim.delta = 1e-3;
dim.leff = 100e-3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stator dimensions

SLOTS_PER_POLE_AND_PHASE = 2;
AIRGAP_FLUX_DENSITY_FOR_SIZING = 1;

%slots
dim.Qs = 3 * 2*dim.p * SLOTS_PER_POLE_AND_PHASE;

%winding
winding = DistributedWindingSpec(dim);
winding.N_layers = 2;
winding.N_series = 12;
dim.stator_winding = winding;

%inner and outer radius
dim.Sout = 50e-3;
dim.Sin = dim.Sout * 0.6;

%slot opening and bottom specs
dim.htt_taper_s = 1e-3; %slot opening, straight part before taper
dim.htt_s = 1.5e-3; %slot opening, total
dim.wso_s = 2e-3; %slot opening, width
dim.r_slotbottom_s = 1.2e-3; %slot bottom, fillet radius

%yoke height
hys = 2*pi*dim.Sin / (2*dim.p) * AIRGAP_FLUX_DENSITY_FOR_SIZING * 2/pi / 2 / 1.5;
dim.hslot_s = abs(dim.Sout - dim.Sin) - hys;
dim.wtooth_s = 2*pi*(dim.Sin + dim.htt_s)/dim.Qs * 0.6;

%materials
dim.stator_core_material = M250_35A;
dim.stator_stacking_factor = 1;
dim.stator_wedge_material = 0;


return
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating and plotting geometry

%creating geometry
stator = Stator(dim);

%plotting geometry
figure(1); clf; hold on; box on; axis equal;
stator.plot_geometry();

%meshing
stator.mesh_geometry();

%visualizing
figure(2); clf; hold on; box on; axis equal tight;
stator.visualize();

%saving visualization
%exportgraphics(gca(),'../docs/documentation/knowledge_base/Stator.png', 'Resolution', 300) 
