---
title : LinearSlottedRotor1
parent: API
grand_parent : Documentation
---
# Summary for: **LinearSlottedRotor1**  < [LinearSlottedRotorBase](LinearSlottedRotorBase.html)

## Class summary

LinearSlottedRotor1 Super-simple slotted AF rotor.

Rectangular bars for now.

Main dimensions:
* p : number of poles
* Qr : number of rotor bars / slots
* slice_radius : slice radius
* leff : slice length:
* delta : airgap length, used for airgap-surface characteristic
length
* rotor_position : (OPTIONAL) rotor position, either "end" or
"center". Rotor yoke-side is modelled as either flux insulation or
symmetry boundary, depending on the case.
* airgap_alignment : (OPTIONAL) either 'up' (default) or 'down'

Slot dimensions:
* hyr : yoke thickness
* h_slot_r : slot depth (airgap to slot bottom distance)
* w_slot_r : slot width
* w_slotOpening_r : slot opening width
* htt_r : tooth tip height

Materials:
* rotor_core_material : core material
* rotor_stacking_factor : core stacking factor, in ]0, 1].
* rotor_bar_material : bar material

End-ring dimensions, (used by CageCircuit)
* W_ring : end-ring width (r-dimension)
* H_ring : end-ring length (z-dimension)
* D_ring : average end-ring diameter

## Properties

### .**winding** - the CageCircuit object.


## Methods

Class methods are listed below. Inherited methods are not included.


