---
title : RotorSlot4
parent: API
grand_parent : Documentation
---
# Summary for: **RotorSlot4**  < [RotorSlotShape](RotorSlotShape.html)

## Class summary

RotorSlot4 Completely rectangular rotor slot shape.

Dimensions:
* wslot_r : slot width
* hslot_r : slot depth (airgap curve to slot bottom line, longest
distance)

## Properties

### .RotorSlot4/**dims** is a property.

### .**has_opening** Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.
Help for RotorSlot4/has_opening is inherited from superclass SlotShapeBase


## Methods

Class methods are listed below. Inherited methods are not included.

### .RotorSlot4/**create_geometry** is a function.
create_geometry(this)


