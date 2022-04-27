---
title : RotorSlot1
parent: API
grand_parent : Documentation
---
# Summary for: **RotorSlot1**  < [RotorSlotShape](RotorSlotShape.html)

## Class summary

RotorSlot1 Rotor slot shape 1.

Class for trapezoidal-like rotor bars/slots.

Dimensions:
* wso_r : slot opening width (can be dummy, see below)
* htt_r : slot opening height (can be dummy)
* hslot_r : slot depth, airgap to slot bottom
* wtooth_r : tooth width
* rotor_slot_opening_material : slot opening material

## Properties

### .**has_opening** Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.
Help for RotorSlot1/has_opening is inherited from superclass SlotShapeBase

### .RotorSlot1/**slot_opening_domain** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .RotorSlot1/**create_geometry** is a function.
create_geometry(this)

### .**initialize** Parse and compute dimensions.

### .RotorSlot1/**orientation_angle** is a function.
a = orientation_angle(this)


