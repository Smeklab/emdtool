stator = Stator(dim);

Core = stator.domains.get('Stator_core');
Wedge = stator.domains.get('Stator_slot_opening');
Slot = stator.slot;

%getting all non-slot curves
cout = setdiff(Core.surfaces(1).lines, [Wedge.surfaces.lines, Slot.liner_curves]);
cag = Slot.airgap_surface_curves;

%{
figure(1); clf; hold on; box on; axis equal;
for c = cout
    c.plot('k');
end
cag.plot('k');

emdtool_export_example_fig([], 'slot_layout_core')

Slot.winding_window_surfaces(1).plot('b');
Slot.winding_window_surfaces(2).plot('b')

Wedge.surfaces.fill('m', 'linewidth', 1, 'facealpha', 0.5);

emdtool_export_example_fig([], 'slot_layout_core_and_slot')
%}

%{
figure(2); clf; hold on; box on; axis equal;
for c = cout
    c.plot('k');
end
cag.plot('k');

Slot.winding_window_surfaces(1).plot('b');
Slot.winding_window_surfaces(2).plot('b')

Wedge.surfaces.plot('m', 'linewidth', 1);

cag.plot('r', 'linewidth', 2);
Slot.first_airgap_point.plot('', 'ro')
Slot.last_airgap_point.plot('', 'rx')

emdtool_export_example_fig([], 'slot_layout_core_and_slot_ag')
%}

figure(3); clf; hold on; box on; axis equal;
Core.surfaces(1).plot('k');
emdtool_export_example_fig([], 'slot_layout_core_reduced')