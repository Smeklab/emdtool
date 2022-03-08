---
title : SliceableCircuit
parent: API
grand_parent : Documentation
---
## Summary for SliceableCircuit
SliceableCircuit Base class for Circuits suitable for slicing.

SliceableCircuit is a base class for Circuits that can be *sliced* ,
i.e. have special functionality
(`this.merge_circuit_from_another_slice`) for combining merging
conductors from a 'copy' of this circuit, from another slice.
Normally, only the first-slice instance is retained, and the others
should be discarded.
## PROPERTIES
* SliceableCircuit/number_of_slices is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * SliceableCircuit Base class for Circuits suitable for slicing.

SliceableCircuit is a base class for Circuits that can be *sliced* ,
i.e. have special functionality
(`this.merge_circuit_from_another_slice`) for combining merging
conductors from a 'copy' of this circuit, from another slice.
Normally, only the first-slice instance is retained, and the others
should be discarded.
Documentation for SliceableCircuit/SliceableCircuit
doc SliceableCircuit

### * SliceableCircuit/merge_circuit_from_another_slice is a function.
merge_circuit_from_another_slice(this, another_circuit)

