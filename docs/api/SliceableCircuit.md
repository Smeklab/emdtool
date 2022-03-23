---
title : SliceableCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **SliceableCircuit**  < handle

## Class summary

SliceableCircuit Base class for Circuits suitable for slicing.

SliceableCircuit is a base class for Circuits that can be *sliced* ,
i.e. have special functionality
(`this.merge_circuit_from_another_slice`) for combining merging
conductors from a 'copy' of this circuit, from another slice.
Normally, only the first-slice instance is retained, and the others
should be discarded.

## Properties

### .SliceableCircuit/**number_of_slices** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .SliceableCircuit/**merge_circuit_from_another_slice** is a function.
merge_circuit_from_another_slice(this, another_circuit)


