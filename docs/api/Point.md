---
title : Point
parent: API
grand_parent : Documentation
---
# Summary for: **Point**  < handle & [ProxyObject](ProxyObject.html)

## Class summary

POINT Class for representing points in a geometry.

Point objects are typically used for defining [Surface](Surface.html) objects, to be
meshed later.

Point objects behave in many ways like 2x1 vectors, allowing the
operations

* pnew = p1 + p2
* pnew = p1 - p2
** pnew = p1 **  scalar
* pnew = p1 / scalar
* r = norm(p1) = p1.norm()
* theta = angle(p1) = p1.angle()

Furthermore, the following operations are often useful for creating
geometries for radial-flux motors:

* pnew = p1.mirror(theta)
* pnew = p1.normalize(radius)
* p1.translate( [x,y] )
* *inplace*  variants of the above, for e.g. modifying existing
[Surface](Surface.html) objects.

## Properties

### .**curves** - Array of [Curve](Curve.html) objects that this point belongs to

### .Point/**is3D** is a property.

### .**lcar** - Characteristic length; representative of maximum edge length of the mesh near Point

### .**x** - x-coordinate of Point

### .**y** - y-coordinate of Point

### .Point/**z** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Point** Constructor.

this = Point([x,y], lcar)

Create a new point at (x,y) with the characteristic
length lcar.
Documentation for Point/Point
doc Point

### .**angle** Angular coordinate.

theta = angle(this)

Returns the angular coordinate theta = atan2(this.y,
this.x)

### .**copy** Return a deep copy.

Returns a new point with the same coordinates and
characteristic length.

### .Point/**last_copy** is a function.
p2 = last_copy(this)

### .**minus** Minus operator.

See Point.plus.

### .**mirror** Mirroring across a segment center.

p2 = mirror(this, theta)

Returns a new Point, mirrored around the *center*  of a
circle segment of theta radians. For instance, if

angle(P) = 30 deg,

then angle(P.mirror(pi/4)) = 60 deg.

### .**mirror_inplace** Mirror in-place.

The same as mirror, but instead of returning a new Point
modifies this.

### .**mrdivide** Scale coordinates by dividing with a scalar.

p2 = P1 / a

Returns a new Point p2, at (P1.x/a, P1.y/x), with the
characteristic length equal to P1.lcar.

### .**mtimes** Scale coordinates by multiplying with a scalar.

p2 = P1 * a

Returns a new Point p2, at (P1.x*a, P1.y*x), with the
characteristic length equal to P1.lcar.

### .**norm** Radial coordinate.

r = norm(this)

Returns the radial coordinate r = sqrt( this.x^2 + this.y^2
).

### .**normalize** point distance from origin.

this = normalize(this, new_r)

Modifies the coordinates of this point so that its distance
from origin (norm(this)) is equal to new_r. The angular
coordinate angle(this) remains unchanged.

### .**normalize_along_vector** Translate in-place along given vector.

normalize_along_vector(this, r, t) translates the `Point` in-place
(without returning a copy) along the given vector `t` until
`norm(this) = r`.

### .**plot** Plot point.

plot(this, text, args)

Plots the point using the marker style etc specified in
args, annotated with text. Supply an empty string to skip.

### .**plus** Plus operator.

pnew = p1 + p2

Returns a new point at (p1.x + p2.x, p1.y + p2.y), with a
characteristic length equal to p1.lcar.

Also works when p is a 2-vector.

### .**rotate** Create a new Point, rotated around the origin.

p2 = rotate(this, theta)

Return a new Point, rotated around the origin by theta
radians.

### .rotate Rotate this point around the origin.

p2 = rotate(this, theta)

Rotate this Point around the origin by theta
radians.

### .**shortest_attached_curve** Shortest curve attached to this.

l = shortest_attached_curve(this) returns the shortest Curve (excluding
possible zero-length Curves) attached to this. The Curve length is
evaluated with c.curve_length().

### .**translate** Create a new translated point.

pnew = translate(this, s)

Returns a new Point, translated with the vector s.

pnew = translate(this, s, lcar)

In addition to above, updates the characteristic length of
the new Point.

### .**translate_inplace** Translation inplace.

this = translate_inplace(this, Point)

Sets the coordinates of this equal to (Point.x, Point.y)

this = translate_inplace(this, [x, y])

Sets the coordinates of this equal to (this.x + x, this.y + y)

### .**unique_not_proxy** Get Points with unique coordinates, proxy the rest.

[C,IA,IC] = unique_not_proxy(this) returns the Points in *this*  (Point array)
whose coordinates are unique according to uniquetol. The tolerance is
computed from the lengths of all non-zero-length curves attacehd to the
Points in the array.

Additionally, the all *replicate*  Points are set as proxies to the parent
Point (i.e. P_another_point_at_same_coordinates.proxy_to = P_main)

### .**xmirror** Return a new Point, mirrored around the x-axis.

p2 = xmirror(this, x)

Returns a new Point at (x - this.x, this.y).

p2 = xmirror(this, x, lcar)

In addition to the above, sets the characteristic length of
p2 to lcar.

### .**ymirror** Return a new Point, mirrored around the y-axis.

p2 = ymirror(this, y)

Returns a new Point at (this.x, y-this.y).

p2 = ymirror(this)

Equivalent to p2 = ymirror(this, 0)

p2 = ymirror(this, y, lcar)

In addition to the above, sets the characteristic length of
p2 to lcar.

### .Point/**ymirror_inplace** is a function.
ymirror_inplace(this, ym)


