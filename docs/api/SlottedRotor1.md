---
title : SlottedRotor1
parent: API
grand_parent : Documentation
---
# Summary for: **SlottedRotor1**  < [SlottedRotorBase](SlottedRotorBase.html)

## Class summary

SlottedRotor1 Simple template for a slotted rotor.

Mainly intended for induction machines with a squirrel-cage winding.

Main dimensions:
* leff : stack length
* p : number of pole-pairs
* symmetry_sectors : number of symmetry sectors
* delta : airgap length
* Rout : outer radius of rotor
* Rin : inner radius of rotor

Slot dimensions, either:
* rotor_slot : a [RotorSlotShape](RotorSlotShape.html) object, OR
* shape_r : (LEGACY) 1 or 2, to automatically dispatch either
[RotorSlot1](RotorSlot1.html) or [RotorSlot2](RotorSlot2.html)

Materials:
* rotor_core_material : rotor core material
* rotor_stacking_factor : core stacking factor, generally < 1.
* rotor_bar_material : cage material
* rotor_slot_opening_material : slot opening material. Can be equal
to core or bar material, for closed and open slots respectively.
* shaft_material : shaft material    %
End-ring dimensions:
* H_ring : end-ring height (radial length)
* W_ring : end-ring width (axial length)
* D_ring : average end-ring diameter

## Properties

### .**winding** - circuit object for the rotor cage, a [CageCircuit](CageCircuit.html)


## Methods

Class methods are listed below. Inherited methods are not included.


