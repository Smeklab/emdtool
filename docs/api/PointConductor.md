---
title : PointConductor
parent: API
grand_parent : Documentation
---
# Summary for: **PointConductor**  < [StrandedConductor](StrandedConductor.html)

## Class summary

PointConductor methods:
PointConductor - is a class.
set_element - vectorized call --> going one by one
set_matrices - finding position

## Properties

### .PointConductor/**element** is a property.

### .**position** - position in global coordinates

### .PointConductor/**radius** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**PointConductor**/PointConductor is a constructor.
this = PointConductor(domain, radius, position)
Documentation for PointConductor/PointConductor
doc PointConductor

### .AREA  Filled ****area**** 2-D plot.
AREA(Y) plots the vector Y or plots each column in matrix Y as a
separate curve and stacks the curves. The x-axis automatically
scales to 1:size(Y,1). The values in Y can be numeric or duration
values.

AREA(X,Y) plots Y versus X and fills the **area** between 0 and Y. The
values in X can be numeric, datetime, duration or categorical
values.

If Y is a vector, then specify X as a vector of increasing
values with length equal to Y. If the values in X are not
increasing, then AREA sorts the values before plotting.

If Y is a matrix, then specify X as a vector of increasing
values with length equal to the number of rows in Y. AREA plots
the columns of Y as filled areas. For each X, the net result is
the sum of corresponding values from the rows of Y. You also
can specify X as a matrix with size equal to Y. To avoid
unexpected output when X is a matrix, specify X so that the
columns repeat.

AREA( ** _ ,BASEVALUE) specifies the base value for the **area** fill.
The default BASEVALUE is 0. Specify the base value as a numeric
value.

AREA( ** _ ,Name,Value) modifies the appearance of the **area** chart
using one or more name-value pair arguments.

AREA(AX, ** _ ) plots into the axes specified by AX instead of the
current axes.

H = AREA( ** _ ) returns one or more Area objects. AREA creates one
object for vector input arguments and one object per column for
matrix input arguments.

See also PLOT, BAR.

### .PointConductor/**copy** is a function.
c2 = copy(this)

### .PointConductor/**elements** is a function.
el = elements(this)

### .vectorized call --> going one by one

### .finding position

### .PointConductor/**visualize** is a function.
visualize(this, varargin)


