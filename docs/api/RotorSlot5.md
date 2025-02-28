---
title : RotorSlot5
parent: API
grand_parent : Documentation
---
# Summary for: **RotorSlot5**  < [RotorSlotShape](RotorSlotShape.html)

## Class summary

RotorSlot5 Simple double-ish cage slot type.

Double-cage-like slot type, consisting of a circular top-bar, a
rounded trapezoidal bottom bar, connected by a straight segment. The
bottom-part of the part is tapered to maintain (approx?) uniform
tooth width along it.

Most edges between the bars and the core are named as 'shell', for
use in worst-case centrifugal stress analysis.


Dimensions:
* htt : shortest distance from airgap to top bar
* w_top : width of top bar
* w_center : width of center-part
* w_bottom : width of the bottom-bar, at its widest.
* h_bar_1 : Distance from airgap to the center of the top-arcs of
the bottom bar.
* h_bar_2 : Height of the bottom bar, measured from the
aforementioned top-center to the center of the bottom-arcs.

## Properties

### .**has_opening** Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.
Help for RotorSlot5/has_opening is inherited from superclass SlotShapeBase


## Methods

Class methods are listed below. Inherited methods are not included.

### .RotorSlot5/**create_geometry** is a function.
create_geometry(this)

### .**initialize** Parse and compute dimensions.

### .RotorSlot5/**orientation_angle** is a function.
a = orientation_angle(this)


