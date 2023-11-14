---
title : WoundSlot
parent: API
grand_parent : Documentation
---
# Summary for: **WoundSlot**  < handle

## Class summary

WoundSlot Base class for slots supporting automatic winding generation.

In addition to the basic functionality inherited from
`SlotShapeBase`, the `WoundSlot` class adds surfaces for the winding
to be later added to the slot. The class is abstract, meaning the
actual geometry creation must be subclassed.

Subclasses of the WoundSlot class should create and add to the parent
geometry all the [Materials](Materials.html) and [Domains](Domains.html) required for modelling the
slot openings, wedges, liners, and similar, **but ONLY**  the [Surface](Surface.html)s
of the to-be winding [Domains](Domains.html). The corresponding winding Materials
and Domains are then to be created inside a [WindingLayoutBase](WindingLayoutBase.html)
object (preferred) or manually inside the parent geometry (not
preferred but occasionally simpler).

The reasoning behind this separation of responsibilities is the
ability to more easily mix and match different slot shapes and
winding geometries (stranded, solid conductors of different shapes,
etc).

The `WoundSlot` base class does contain some useful methods to
be inherited - or **modified if needed**  by the subclasses:
* surface_points_in_reference_frame : return the x- and
y-coordinates of a winding window surface in the reference plane
(see below)
* surface_to_parent_frame : inplace-transform a [Surface](Surface.html) inside a
winding window surface to the parent frame
* surface_bounding_box : parameters of the bounding box of a
winding window surface in the reference frame.

The concept of **reference frame**  is now introduced to simplify the separation
of winding geometry creation (say solid bar conductors) from the slot
geometry creation. Specifically, a slot in the **reference frame**  is
laying on the x-axis, vertically centered, with the slot opening /
airgap side / equivalent towards the smallest x-values, and the slot
bottom / equivalent towards the highest x-values.

This ways, the creation of the actual winding geometry (e.g. solid
conductors) can be agnostic of the orientation (radial or axial,
inrunner or outrunner) of the final slot geometry.

Correspondingly, the `WoundSlot` subclass must perform two things:
* Specify the geometry of the winding window surface in the
reference plane, either by a parametric form
(`this.surface_bounding_box`) or be returning the surface xy-points
instead.
* Transform any [Surface](Surface.html)(s) created from the reference frame to
the parent geometry frame (so that they do actually fall inside the
actual slot).

The base class implementation already contains simple transformation
functions, based on calling
* `slot_angle` method of a `RadialGeometry` parent geometry, and
then rotating the slot.
* `slot_orientation` method of an `AxialGeometry´
and then x-shifting (by mean x-coordinate of the winding window) and rotating the geometry.

**** WARNING** Please note that the basic implementations are very
simple indeed, and will probably fail in insidious (non-crashing)
ways for more complex geometries. Overloading the corresponding
methods in subclasses is recommended.

## Properties

### .**interlayer_curves** - curves between separate winding window surfaces

### .**liner_curves** - curves between the winding window surfaces and rest of the geometry

### .**winding_window_area** - combined area of winding window

### .surfaces for the winding window Surface objects determining the
winding.

The default assumption is to have one [Surface](Surface.html) per winding
layer. However, some Layouts do support multiple surfaces per
layer, which can be useful for some geometries (e.g. axial-flux
or linear machines with two rotational and axial symmetry).


## Methods

Class methods are listed below. Inherited methods are not included.

### .**surface_bounding_box** Winding window surface bounding box in reference
coordinates.

[xmin, h, w] = surface_bounding_box(this, k_surface) returns the bounding
box for this.winding_window_surfaces(k_surface), with
* xmin : minimum x-coordinate of the surface
* h : x-directional span, max(x) - min(x)
* w : y-directional span, max(y) - min(y)

### .**surface_points_in_reference_frame** Return the coordinates of the winding
window surface.

xs = surface_points_in_reference_frame(this, k_surface) returns a 2xN
array containing the x- and y-coordinates of the boundary of the winding
window surface *k* surface_.

### .WoundSlot/**surface_to_parent_frame** is a function.
surface_to_parent_frame(this, k_surface, s)


