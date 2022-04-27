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

### .NORM   Matrix or vector **norm**.
NORM(X,2) returns the 2-norm of X.

NORM(X) is the same as NORM(X,2).

NORM(X,1) returns the 1-norm of X.

NORM(X,Inf) returns the infinity **norm** of X.

NORM(X,'fro') returns the Frobenius **norm** of X.

In addition, for vectors...

NORM(V,P) returns the p-norm of V defined as SUM(ABS(V).^P)^(1/P).

NORM(V,Inf) returns the largest element of ABS(V).

NORM(V,-Inf) returns the smallest element of ABS(V).

By convention, NaN is returned if X or V contains NaNs.

See also COND, RCOND, CONDEST, NORMEST, HYPOT, VECNORM, NORMALIZE.
Documentation for norm
doc norm

### .**uminus** Reverse direction, return a new Curve.
Documentation for Line/uminus
doc Line/uminus


