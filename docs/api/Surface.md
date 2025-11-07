---
title : Surface
parent: API
grand_parent : Documentation
---
# Summary for: **Surface**  < handle

## Class summary

SURFACE Class for representing elementary surfaces.

A Surface object represents a single surface with or without holes (i.e.
a simply or multiply connected surface). Each surface is defined by

* Its boundary. The boundary consists of segments, i.e. [Curve](Curve.html)
objects representing either a line segment or circle arc joining
two [Point](Point.html) objects.

* (Optional) Its holes, each a [Surface](Surface.html) themselves.

See <geometry_creation.html geometry creation> for more details.

## Properties

### .**holes** - Array of [Surface](Surface.html) objects inside this Surface.
Documentation for Surface/holes
doc Surface/holes

### .Surface/**is_closed** is a property.
Documentation for Surface/is_closed
doc Surface/is_closed

### .**line_directions** - Direction of each boundary segment (+1 / -1).
Documentation for Surface/line_directions
doc Surface/line_directions

### .**lines** - Array of [Curve](Curve.html) objects defining the boundary of the geometry. Ordered.
Documentation for Surface/lines
doc Surface/lines

### .**name** - Surface name.
Documentation for Surface/name
doc Surface/name

### .**parent** Parent domain, if any.
Documentation for Surface/parent
doc Surface/parent


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Surface** Constructor.

this = Surface(name)

Create an empty surface with the specified name (string).

this = Surface(name, (Curve definitions))

Create a surface, and then pass all following arguments
(Curve definitions) to this.add_curve.
Documentation for Surface/Surface
helpwin Surface

### .**add_curve** Add a curve to the surface boundary.

add_curve(this, geo.line, p1, p1)

Add a line segment, from [Point](Point.html) p1 to p2.

If the geometry already contains a [Curve](Curve.html) linking p1 and p2,
it is automatically added to this. If not, a new Curve
object is created.

Curves must be added *in order* , i.e. the start Point of
the current curve must equal the end Point of the
previously added Curve.

add_curve(this, geo.arc, p1, pcenter, p2)

Add a circle [Arc](Arc.html), from [Point](Point.html) p1 to p2, with its
center at [Point](Point.html) pcenter.

add_curve(this, Curve)

Add a [Curve](Curve.html) object to the boundary. _*TO BE
IMPLEMENTED*_

add_curve(this, geo.hole, surf1, surf2, ..)

Adds the surfaces surf1, surf2, .. as holes within this
surface.

**Note** : multiple calls to **add_curve** can be chained together
by simply passing all arguments to the method at once.
However, the *holes* , if any, must be supplied last and not
be followed by any Curves.
Documentation for Surface/add_curve
doc Surface/add_curve

### .**add_hole** Add one or more holes to the surface.

add_hole(this, surface_1, ...)
Documentation for Surface/add_hole
doc Surface/add_hole

### .**area** Return surface area(2D).

Calculate the **area** of this surface (polygon). See
this.points().

**NOTE** : after meshing the geometry, the **area** of the meshed
surface may not exactly equal the number returned by
area(this), especially if the surface contains [Arc](Arc.html)
boundaries.
Documentation for Surface/area
doc Surface/area

### .**contract** Contract surface.

s2 = contract(this, d) is equivalent to calling

s2 = this.copy();
s2.contract_inplace(d);
Documentation for Surface/contract
doc Surface/contract

### .**contract_inplace** Contract surface into a marginally smaller surface.

contract_inplace(this, reff) squeezes the surface to a smaller surface,
by the amount d. Not guaranteed to work; only recommended with d
significantly smaller than the radius of the smallest arc.
Documentation for Surface/contract_inplace
doc Surface/contract_inplace

### .**copy** Copy surface.

s2 = copy(this) returns a **copy** of this, with all the points and curves
copied. Also works when `this` is an array of Surfaces.

If any of the Surfaces in `this` shares `Points` or `Curves` in `Surfaces`
outside those listed in `this`, dublicates are created of those
Points/Curves. If any such Points/Curves are named / special, unexpected
behaviour can occur.
Documentation for Surface/copy
doc Surface/copy

### .**fill** Fill(-plot) surface
Documentation for Surface/fill
doc Surface/fill

### .Surface.**from_line** is a function.
this = Surface.from_line(l, direction)
Documentation for Surface.from_line
doc Surface.from_line

### .**get_polyshape** Get associated polyshape.

p = get_polyshape(this) returns an associated Matlab polyshape.
Documentation for Surface/get_polyshape
doc Surface/get_polyshape

### .**in_surface** Point in surface?

bl = in_surface(this, X)
Documentation for Surface/in_surface
doc Surface/in_surface

### .Surface/**is_ccw** is a function.
is_ccw = is_ccw(this)
Documentation for Surface/is_ccw
doc Surface/is_ccw

### .**join_with_surface** Join two surfaces.

EXPERIMENTAL.

this = join_with_surface(this, another_surface) absorbs another_surface
into this. The surfaces should share one or more (untested) continuous
Curves.
Documentation for Surface/join_with_surface
doc Surface/join_with_surface

### .**mirror** Mirror surface.

s2 = mirror(this, a) return a new surface, mirrored across the angle *a* .
See Point.mirror
Documentation for Surface/mirror
doc Surface/mirror

### .**mirror_inplace** Mirror surface in-place.

mirror_inplace(this, a) calls `p.mirror_inplace(a)` for all
[Points](Points.html) in `this.`

Modifies the original surface; does not return a copy.
Documentation for Surface/mirror_inplace
doc Surface/mirror_inplace

### .**plot** Plot surface.

plot(this, args)

Plot surface with (args).
Documentation for Surface/plot
doc Surface/plot

### .**points** Surface boundary as an array of doubles.

X = points(this)

Returns the x- and y-coordinates of the [Point](Point.html) objects
defining the boundary of this surface.

X = points(this, dense) use denser **points** for Arcs
Documentation for Surface/points
doc Surface/points

### .**reduce** Reduce surface to the smallest possible area.

This method removes such holes (geo.hole) that share one or more boundary
Curves with this surface. For instance, a square surface with a smaller
square inside, tangenting on one edge, is reduced into a U-shaped
surface.

new_boundary_curves = reduce(this, [Point_start, Point_end] )

where Point_start and Point_end specify some boundary Line segment. The
method modifies the boundary of this surface accordingly, and
additionally returns the new boundary curves.

**NOTE**  The method works on *counterclockwise*  oriented surfaces, so the
start and end points must be selected accordingly.

WARNING : If Point_start and Point_end are joined by both a Line and one
or more Arcs, the Line is selected.

**NOTE**  This method must be called only after *all*  boundary-sharing holes
have been defined; the method cannot see the future.
Documentation for Surface/reduce
doc Surface/reduce

### .**reset_curves** Remove all lines.
Documentation for Surface/reset_curves
doc Surface/reset_curves

### .**rotate** Rotate surface, return copy.

s2 = rotate(this, a) returns a new Surface s2, rotated by `a` radians.

Equivalent to calling
`s2 = this.copy()`
`s2.rotate_inplace(a)`.
Documentation for Surface/rotate
doc Surface/rotate

### .**rotate_inplace** Rotate surface in-place.

rotate_inplace(this, a) rotates all Points in this around the
Origin by the angle a.
Documentation for Surface/rotate_inplace
doc Surface/rotate_inplace

### .**set_maximum_characteristic_length** Set maximum characteristic length.

set_maximum_characteristic_length(this, lcar)

The function goes through all [Points](Points.html) `p` in `this` and sets their
characteristic length to `min(p.lcar, lcar)`.
Documentation for Surface/set_maximum_characteristic_length
doc Surface/set_maximum_characteristic_length

### .**translate_inplace** Translate surface in-place.

translate_inplace(this, x) calls `p.translate_inplace(x)` for
all [Points](Points.html) in this.

Modifies the original surface; does not return a copy.
Documentation for Surface/translate_inplace
doc Surface/translate_inplace

### .mirror Y-mirror surface.

s2 = ymirror(this, a) return a new surface, mirrored across the x-axis.
See Point.ymirror
Documentation for Surface/ymirror
doc Surface/ymirror

### .**ymirror_inplace** y-mirror surface in-place.

ymirror_inplace(this, a) calls `p.ymirror_inplace(a)` for all
[Points](Points.html) in `this.`

Modifies the original surface; does not return a copy.
Documentation for Surface/ymirror_inplace
doc Surface/ymirror_inplace


