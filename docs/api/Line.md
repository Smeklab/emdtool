---
title : Line
parent: API
grand_parent : Documentation
---
# Summary for: **Line**  < [Curve](Curve.html)

## Class summary

Line methods:
Line - is a class.
from_points - Create an Line from Points.
intersects_with - Checks if Line intersects with another.
set_radially_periodic_with - Set periodicity condition for radial lines.

## Properties

### .**type** - Type (geo.line or geo.arc)
Help for Line.type is inherited from superclass Curve
Documentation for Line.type
doc Line.type


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Line**/Line is a constructor.
this = Line(pstart, pend)
Documentation for Line/Line
helpwin Line

### .Line/**check_proxying** is a function.
bl = check_proxying(this, c2)
Documentation for Line/check_proxying
doc Line/check_proxying

### .length Line length.
Documentation for Line/curve_length
doc Line/curve_length

### .**from_points** Create an Line from Points.

this = from_points(pstart, pend) either creates a new Line, or
returns an existing Line if found.

this = from_points(pstart, pend, false) returns an existing Line,
or throws an error if not found.
Documentation for Line.from_points
doc Line.from_points

### .**intersects_with** Checks if Line intersects with another.

bl = intersects_with(this, another_line) returns `true` if `this`
intersects with `another_line` and `false` otherwise.

**EXPERIMENTAL**
Documentation for Line/intersects_with
doc Line/intersects_with

### .NORM   Vector and matrix **norm**s.
N = NORM(V) returns the 2-norm or Euclidean **norm** of the vector V and is
the same as NORM(V,2).

N = NORM(V,p) returns the generalized vector p-norm.
* If p is a positive real scalar, the p-norm is defined as
SUM(ABS(V).^p)^(1/p).
* If p = Inf, then N is the largest element of ABS(V).
* If p = -Inf, then N is the smallest element of ABS(V).

N = NORM(M) returns the 2-norm of the matrix M, which is same as
NORM(M,2), and is defined by the largest singular value.

N = NORM(M,p) returns the p-norm of the matrix M, where p is 1, 2, or
Inf.
* If p = 1, then N is the maximum absolute column sum in M.
* If p = 2, then N is the maximum singular value of M.
* If p = Inf, then N is the maximum absolute row sum of M.

N = NORM(X,"fro") returns the Frobenius **norm** of any numeric array X.
Notice that the Frobenius **norm** for vectors is equivalent to the 2-norm.
For N-D arrays, only the Frobenius **norm** is supported via NORM.

By convention, NaN is returned if the first input contains NaNs.

See also vecnorm, pagenorm, normest, normalize, cond, hypot.
Documentation for Line/norm
doc Line/norm

### .**set_radially_periodic_with** Set periodicity condition for radial lines.

set_radially_periodic_with(this, another_line) sets this line to be
periodic with `another_line`, using `geo.set_periodic` and the `Points`
of the two lines, oriented radially.

**NOTE**  `this` must lie on the clockwise boundary, and `another_line` on
the counter-clockwise one.
Documentation for Line/set_radially_periodic_with
doc Line/set_radially_periodic_with

### .**uminus** Reverse direction, return a new Curve.
Documentation for Line/uminus
doc Line/uminus


