---
title : SlicedMotorModel
parent: API
grand_parent : Documentation
---
# Summary for: **SlicedMotorModel**  < handle

## Class summary

SlicedMotorModel Base class for sliced motor models.

## Properties

### .**component_bias_angle** Container for component bias angles.

A HashMap container for bias angles for the geometry containers,
such as rotor bias angles.

### .**component_shifts** Container for component shifts.

A HashMap container for xy-biases of the geometry components,
such as those used for visualizing the slices of a radial-flux
machine.

### .**slices** Slices, array of [ModelSlice](ModelSlice.html)s.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SlicedMotorModel** Base class for sliced motor models.
Documentation for SlicedMotorModel/SlicedMotorModel
doc SlicedMotorModel

### .**add_slice** Add slice to this.

add_slice(this, slice) adds the `slice` to `this.slices`, and the
contained slice geometries to `this` by calling
`slice.add_geometries_to_model`.

### .**parse_sliced_circuits** Parse sliced circuits.

parse_sliced_circuits(this) tries to parse the mutual relationships
between all the `CircuitBase` objects of the different slices. This is
performed as follows:
* For regular circuits (see below), each instance from each slice is
added to `this.circuits`.
* For circuits of [SliceableCircuit](SliceableCircuit.html) subclass, the following steps are
performed:
* The circuit of the first slice (`this.slices(1)`) is added to
`this`.
* The corresponding circuits in the successive slices are not added
to the parent model. Instead, for each child circuit, the
`parent_circuit.merge_circuit_from_another_slice(child_circuit)`
method is called, `parent_circuit` being the circuit from the
previous step.
Correspondingly, it is important that all the slices have the same
number of circuits, and the same conceptual structure. For instance,
mixing slices with a different rotor topology is generally not
supported without overloading this method by a suitable subclass.


