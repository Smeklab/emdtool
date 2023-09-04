---
title : Slot1b
parent: API
grand_parent : Documentation
---
# Summary for: **Slot1b**  < [Slot1](Slot1.html)

## Class summary

Slot1b A successor of the Slot1 class, with multiple slot openings.

In addition to the high/low options from Slot1, this class provides
openings with rectangular and trapezoidal slot wedges. This class can
be used with the [Stator](Stator.html) class, by definining the input dimension
`dim.stator_slot = Slot1b();` and then either
`dim.stator_slot.slot_opening_type = "trapezoidal wedge";` or
`dim.stator_slot.slot_opening_type = "rectangular wedge";`

These two cases require defining the extra input dimension
* w_wedge : width of the wedge at its widest point. Important: this
dimension must by strictly greater than the width of the winding
window nearest the slot opening. This is not asserted by the class,
but is instead the responsibility of the user.
For both wwedge shapes, the other dimensions are as follows:
* htt_taper_s : shortest distance from the airgap to the wedge
* htt_s : total slot opening heigth, distance from airgap to the
winding window
* wso_s : width of the slot opening, air part
* stator_wedge_material : as the name suggests

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .Slot1b/**create_geometry** is a function.
create_geometry(this)

### .Slot1b/**create_slot_opening** is a function.
data = create_slot_opening(this, Xco_cw, Xco_ccw)


