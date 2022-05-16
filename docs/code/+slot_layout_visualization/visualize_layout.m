

%{
slot_layout_visualization.dims;

stator = Stator(dim);

stator.mesh_elementary_geometry();

figure(1); clf; hold on; box on; axis equal;
stator.visualize();

emdtool_export_example_fig(gca, 'slot_layout_stranded')
%}

%{
slot_layout_visualization.dims;

winding = dim.stator_winding;
winding.winding_model_type = defs.solid;

layout = RoundWireLayout();
layout.diameter = 0.8e-3;
winding.wires_in_hand = 10;

winding.layout_spec = layout;

stator = Stator(dim);

%figure(1); clf; hold on; box on; axis equal;
%stator.plot_geometry();

stator.mesh_elementary_geometry();

figure(1); clf; hold on; box on; axis equal;
stator.visualize();

emdtool_export_example_fig(gca, 'slot_layout_random')
%}


%%{
slot_layout_visualization.dims;

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


dim.stator_winding.winding_model_type = defs.solid;
stator = Stator(dim);

stator.mesh_elementary_geometry();

figure(1); clf; hold on; box on; axis equal;
stator.visualize();

emdtool_export_example_fig(gca, 'slot_layout_hairpin')
%}
