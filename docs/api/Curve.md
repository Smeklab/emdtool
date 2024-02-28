---
title : Curve
parent: API
grand_parent : Documentation
---
# Summary for: **Curve**  < handle & [ProxyObject](ProxyObject.html) & matlab.mixin.Heterogeneous

## Class summary

CURVE Abstract base class for representing line segments and circle arcs

## Properties

### .Curve/**left_surface** is a property.

### .**name** - name, Optional

### .**pcenter** - Center [Point](Point.html) of Arc.

### .**pend** - end  [Point](Point.html) of curve

### .**periodic_with** - Another curve that *this*  is periodic with.

### .**pstart** - start [Point](Point.html) of curve

### .Curve/**right_surface** is a property.

### .**type** - Type (geo.line or geo.arc)

### .Curve/**xend** is a property.

### .Curve/**xstart** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .Constructor

this = Curve(pstart, pend)

Create a line segment (geo.line) between the [Point](Point.html)
objects.
pstart and pend.

this = Curve(pstart, pcenter, pend)

Create a circle arc (geo.arc) between pstart and pend, centered at
pcenter.
Documentation for Curve/Curve
doc Curve

### .**add_to_points** Add this to defining Points.

### .**angle** Angle between two Curves.

Call syntax

a = c1.angle(c2)

a = angle(c1, c2)

Returns the **angle** a.

### .Curve/**center** is a function.
pc = center(this)

### .**curve_length** Length of curve.

l = curve_length(this) returns the *length*  of the Curve:
* regular length for Lines
*

### .Curve/**detach** is a function.
detach(this)

### .Curve/**distance_from_point** is a function.
[d, Pclosest] = distance_from_point(this, P)

### .Direction of this Curve to join with other curve.

ldir = extend_direction(this, other_curve)

### .**extends** Check if this Curve **extends** other curve.

bl = extends(this, other_curve, other_curve_direction)

### .flip Flip Curve.

flip_curve(this) flips the Curve, i.e. does the following two tasks:
* Flip the direction of Points defining this
* Update the line_direction in `this.left_surface` and
`this.right_surface`

### .**get_point_ids** Return the ids of Points defining this.

ids = get_point_ids(this) returns a COLUMN vector (size(ids,2) =
1) of the ids of all Points (Point.id) defining this.

### .**get_xy** Get xy-coordinates of start- and end-points.

### .**joinable_with** Check if this Curve joins with other Curve.

bl = joinable_with(this, other_line)

bl = true if this shares a point with other_line

### .Curve/**next_left** is a function.
l = next_left(this, P)

### .**norm** Length of Curve.

### .**plot** Plot Curve.

### .Curve/**points** is a function.
X = points(this)

### .**rotate** Rotate around the origin, return a new Curve.

### .**set_characteristic_length** Set characteristic length.

set_characteristic_length(this, lcar) sets the characteristic length on
the `Curve` to `lcar`.

### .Curve/**split_with_point** is a function.
new_curve = split_with_point(this, P)

### .Curve/**tangent** is a function.
t = tangent(this, p)

### .**unique_not_proxy** Return unique Curves, proxy the rest.

c = unique_not_proxy(this) returns the *unique*  Curves in the array
*this* , with 'unique' understood as a unique combination of `id` values
of the `Points` defining each curve.

**** WARNING** If there are Curves of identical but opposite definitions in
terms of the unique Points, the replicate curves are flipped where
appropriate with Curve.flip()

### .start point

### .Curve/**update_single_point** is an undocumented builtin Curve method.


