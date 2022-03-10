---
title : SlottedRotor1
parent: API
grand_parent : Documentation
---
## Summary for SlottedRotor1
SlottedRotor1 Simple template for a slotted rotor.

Mainly intended for induction machines.

Main dimensions:
* leff : stack length
* p : number of pole-pairs
* symmetry_sectors : number of symmetry sectors
* delta : airgap length
* Rout : outer radius of rotor
* Rin : inner radius of rotor

Slot dimensions:
* shape_r : slot shape, (1/2). 1 for trapezoidal shape, 2 for
rounded.
* wso_r : slot opening width (can be dummy, see below)
* htt_r : slot opening height (can be dummy)
* hslot_r : slot depth, airgap to slot bottom
* wtooth_r : tooth width

Materials:
* rotor_core_material : rotor core material
* rotor_stacking_factor : core stacking factor, generally < 1.
* rotor_bar_material : cage material
* rotor_slot_opening_material : slot opening material. Can be equal
to core or bar material, for closed and open slots respectively.
* shaft_material : shaft material

End-ring dimensions:
* H_ring : end-ring height (radial length)
* W_ring : end-ring width (axial length)
* D_ring : average end-ring diameter
## PROPERTIES
## Methods
Class methods are listed below. Inherited methods are not included.
