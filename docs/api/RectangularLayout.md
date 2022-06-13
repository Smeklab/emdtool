---
title : RectangularLayout
parent: API
grand_parent : Documentation
---
# Summary for: **RectangularLayout**  < [WindingLayoutBase](WindingLayoutBase.html)

## Class summary

RectangularLayout Layout for rectangular conductors.

A Layout class for rectangular conductors. Supports both solid
conductor models, and stranded models with AC loss post-processing.
Only works with slot of constant width (rectangular-like). Rounded
slot corners and similar often work, but no explicit checking is
performed for intersections between the conductors and slot
boundaries.

## Properties

### .**conductor_columns** Number of conductor columns.

The number of conductors side-by-side (perpendicular to the long
axis of the slot) in each layer. Default 1.

### .**conductor_height** Conductor height.

The class also offers experimental support for un-even conductor
heights, in which case the `conductor_height` must be an array,
specifying the height of each row of conductors.

### .**conductor_width** - width of individual conductor


## Methods

Class methods are listed below. Inherited methods are not included.


