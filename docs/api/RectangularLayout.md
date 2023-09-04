---
title : RectangularLayout
parent: API
grand_parent : Documentation
---
# Summary for: **RectangularLayout**  < [WindingLayoutBase](WindingLayoutBase.html) & [MultiSurfaceLayout](MultiSurfaceLayout.html)

## Class summary

RectangularLayout Layout for rectangular conductors.

A Layout class for rectangular conductors. Supports both solid
conductor models, and stranded models with AC loss post-processing.
Only works with slot of constant width (rectangular-like). Rounded
slot corners and similar often work, but no explicit checking is
performed for intersections between the conductors and slot
boundaries.

Supports an integer number of winding window surfaces per winding
layer. The number must be equal for all layers.

The slot insulation material can be given in
`dim.slot_insulation_material`.

## Properties

### .**conductor_columns** Number of conductor columns.

The number of conductors side-by-side (perpendicular to the long
axis of the slot) in each layer. Default 1.

### .**conductor_height** Conductor height.

The class also offers experimental support for un-even conductor
heights, in which case the `conductor_height` must be an array,
specifying the height of each row of conductors.

### .**conductor_width** - width of individual conductor

### .**long_axis_bias** Bias in conductor placement along long axis.

Giving a scalar value allocates the given number of extra space
towards the slot opening, independently on each layer. The
spacing between conductors is correspondingly reduced.

If a 1x2 vector is given, the first value is used as described
above. The second value is applied as a uniform shift towards the
slot opening, with no effect on the interconductor space.

### .**short_axis_bias** Bias in conductor placement along short axis.

Giving a scalar value allocates extra space between conductors
and layer walls. Interconductor spacing is correspondingly
reduced. Please note that this has NO EFFECT if the number of
conductor columns is 1.

If a 1x2 vector is given, the first value is used as described
above. The second value is applied as a uniform shift to the
placement of all the conductors, along the short axis of the
slot.

Giving a 2 x (1/2) array specifies separate shifts for each
winding layer. Only applicable to 2-layer windings.


## Methods

Class methods are listed below. Inherited methods are not included.


