---
title : RotorSlot3
parent: API
grand_parent : Documentation
---
# Summary for: **RotorSlot3**  < [RotorSlotShape](RotorSlotShape.html)

## Class summary

RotorSlot3 Rotor slot shape 3.

## Properties

### .RotorSlot3/**dims** is a property.

### .**has_opening** Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.
Help for RotorSlot3/has_opening is inherited from superclass SlotShapeBase

### .RotorSlot3/**slot_bottom_curves** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**RotorSlot3** Rotor slot shape 3.
Documentation for RotorSlot3/RotorSlot3
doc RotorSlot3

### .RotorSlot3/**create_geometry** is a function.
create_geometry(this, kseg)


