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

Giving a scalar value virtually shrinks the winding window
surface size from the slot-opening side, resulting in the
conductors being squeezed closer to each other, towards the slot
opening.

If a 1x2 vector is given, the first value is used as described
above. The second value is applied as a uniform shift towards the
slot bottom, with no effect on the interconductor space.

If a 1x3 vector is given, the first two values are used as
described above. The third value is then used to allocate extra
space towards the slot bottom, in the similar fashion as the
first value is used towards the slot opening.

### .**short_axis_bias** Bias in conductor placement along short axis.

This property acts in the same way as `long_axis_bias`, but along
the short axis of the slot. Please note that if
`conductor_columns` is 1, the first and third values have no
effect.

In case of double-layer windings with the layers side-by-side,
the orientation of the conductor shift is flipped for the second
layer. In other words, any shifts specified should work towards
the slot center layer.
**** NOTE:** The exact direction can depend on the geometry
template, meaning a positive scalar may squeeze the conductors
towards the slot center in some geometries, and towards the
slot walls in other. Typically, you should specify a positive
value to either the first or the third element of this property
to obtain the desired effect.


## Methods

Class methods are listed below. Inherited methods are not included.

### .parsing some easy stuff

### .**parse_conductor_corners** Parse conductor placement.

coordinates = parse_conductor_corners(this, slot, circuit, varargin)
parses the coordinates (lower-left corner) of each conductor.

Under default conditions, with rectangular-enough winding window
surfaces, the conductors are spaced uniformly along the long and short
axes of the slot, with equal spacing between the conductors and the
conductors and winding window surface walls, in the respective
directions.

The spacing can be further adjusted by the `long_axis_bias` and
`long_axis_bias` properties.

The method returns an array of structures.


