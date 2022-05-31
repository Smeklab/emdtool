---
title : FieldWindingSpec
parent: API
grand_parent : Documentation
---
# Summary for: **FieldWindingSpec**  < [PolyphaseWindingSpec](PolyphaseWindingSpec.html)

## Class summary

FieldWindingSpec Winding specification object for field-windings.

FieldWindingSpec narrows down the [PolyphaseWindingSpec](PolyphaseWindingSpec.html) base class
to typical field-windings.

For now, two [Conductor](Conductor.html)s per pole are assumed, one for each coil
side.

## Properties

### .**overhang_length** Field-winding axial overhang length.

Either equal to `this.geometry.coil_width()/2` if defined by the
parent geometry, or 0 otherwise.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**get_end_winding_length_per_conductor** Field-winding end-turn length.

The value returned is either:
* the specified `end_winding_length_per_conductor` property

** equal to `1.36** this.geometry.coil_width()` if the parent
geometry defines a `coil_width` method

* 0 otherwise

### .FieldWindingSpec/**line_current_matrix** is a function.
M = line_current_matrix(this)

### .FieldWindingSpec/**line_to_line_voltage_matrix** is a function.
M = line_to_line_voltage_matrix(this)

### .this.layout_matrix = repmat([1 -1], 1, 2*this.p);


