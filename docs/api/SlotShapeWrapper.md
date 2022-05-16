---
title : SlotShapeWrapper
parent: API
grand_parent : Documentation
---
# Summary for: **SlotShapeWrapper**  < [StatorSlotShape](StatorSlotShape.html)

## Class summary

SlotShapeWrapper A wrapper class for one-off slot geometries.

SlotShapeWrapper is a class for manually-defined slot geometries,
that do not deserve their own template. It takes as input pre-defined
winding window surfaces, allowing it to be used in conjunction with
the winding model flexibility offered by the [WindingLayoutBase](WindingLayoutBase.html)
winding templates.

this = SlotShapeWrapper(parent_geometry, surfaces) instantiates a
wrapper around the given `surfaces` array, and also attempts to parse the
slot liner curves (outer boundary of `surfaces`) and inter-layer
insulation curves (curves shared by >= 2 surfaces).

## Properties

### .**has_opening** Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.
Help for SlotShapeWrapper/has_opening is inherited from superclass SlotShapeBase


## Methods

Class methods are listed below. Inherited methods are not included.

### .SlotShapeWrapper/**create_geometry** is a function.
create_geometry(~)

### .SlotShapeWrapper/**orientation_angle** is a function.
a = orientation_angle(this)


