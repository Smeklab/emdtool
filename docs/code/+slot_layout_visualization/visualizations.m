stator = Stator(dim);

Core = stator.domains.get('Stator_core');
Wedge = stator.domains.get('Stator_slot_opening');
Slot = stator.slot;

%getting all non-slot curves
cout = setdiff(Core.surfaces(1).lines, [Wedge.surfaces.lines, Slot.liner_curves]);
cag = Slot.airgap_surface_curves;

%visualizing slot only
%{
figure(1); clf; hold on; box on; axis equal;
for s = Slot.all_surfaces
    s.plot('b');
end
Wedge.surfaces.fill('m', 'linewidth', 1, 'facealpha', 0.5, 'linestyle', 'none');

emdtool_export_example_fig([], 'slot_layout_slot')
return
%}

%just core
%%{
figure(1); clf; hold on; box on; axis equal;
for c = cout
    c.plot('k');
end
cag.plot('k');

emdtool_export_example_fig([], 'slot_layout_core_ClosedSlot')

cag.plot('r', 'linewidth', 1);
Slot.first_airgap_point.plot('', 'ro', 'markersize', 10)
Slot.last_airgap_point.plot('', 'rx', 'markersize', 10)

emdtool_export_example_fig([], 'slot_layout_core')
return
%}

%%{
figure(2); clf; hold on; box on; axis equal;
for c = cout
    c.plot('k');
end
cag.plot('k');

Slot.winding_window_surfaces(1).plot('b');
Slot.winding_window_surfaces(2).plot('b')

Wedge.surfaces.plot('b');

cag.plot('r', 'linewidth', 2);
Slot.first_airgap_point.plot('', 'ro', 'markersize', 10)
Slot.last_airgap_point.plot('', 'rx', 'markersize', 10)

%emdtool_export_example_fig([], 'slot_layout_core_and_slot_ag')
return
%}

figure(3); clf; hold on; box on; axis equal;
Core.surfaces(1).plot('k');
emdtool_export_example_fig([], 'slot_layout_core_reduced')