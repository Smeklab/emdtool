---
title : Arc
parent: API
grand_parent : Documentation
---
# Summary for: **Arc**  < [Curve](Curve.html)

## Class summary

Arc methods:
Arc - is a class.
center_from_segment_points - Arc center from three segment points.
from_points - Create an Arc from Points.
from_points_and_angle - Create arc from two Points and angle.
from_segment_points - Create an Arc from three points on it.
update_points - start and end points

## Properties

### .Arc/**angle_end** is a property.

### .Arc/**angle_span** is a property.

### .Arc/**angle_start** is a property.

### .Arc/**radius** is a property.

### .**type** - Type (geo.line or geo.arc)
Help for Arc.type is inherited from superclass Curve

### .Arc/**xcenter** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Arc**/Arc is a constructor.
this = Arc(pstart, pcenter, pend)
Documentation for Arc/Arc
doc Arc

### .**center_from_segment_points** Arc center from three segment points.

P_center = center_from_segment_points(Pstart, Pmid, Pend)

### .Arc/**check_proxying** is a function.
bl = check_proxying(this, c2)

### .**from_points** Create an Arc from Points.

this = from_points(pstart, pcenter, pend) either creates a new Arc, or
returns an existing Arc if found.

this = from_points(pstart, pcenter, pend, false) returns an existing Arc,
or throws an error if not found.

this = from_points(pstart, pend, whatever) returns the first existing arc
connecting points pstart and pend, or throws an error if not found.

[this, direction] = from_points(...) also returns the direction of the
Arc: +1 if this.pstart equals the given pstart, -1 otherwise.

### .**from_points_and_angle** Create arc from two Points and angle.

this = from_points_and_angle(Pstart, Pend, arc_angle) creates a new Arc
object from the two given [Points](Points.html) and the arc opening angle. A new
center point is created.

### .**from_segment_points** Create an Arc from three points on it.

this = from_segment_points(Pstart, Pmid, Pend) creates a new Arc between Pstart
and Pend, so that it goes over Pmid. A new Point is created for the Arc
center.

**IMPORTANT NOTE:**  The function returns a single Arc, between Pstart and
Pend. Thus, the Point Pmid does not "belong" to the resulting Arc, and
therefore must not be used as start- or end-Point in any other Curve.

Consider creating two Arcs, between Pstart-Pmid and Pmid-Pend if this is
necessary.

### .**uminus** Reverse direction, return a new Curve.

### .start and end points


