---
title : RFSlice
parent: API
grand_parent : Documentation
---
# Summary for: **RFSlice**  < [ModelSlice](ModelSlice.html)

## Class summary

RFSlice Slice class for radial-flux machines.

See `RFSlice.Default` for suggested use.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Default** Common stator-rotor slice.

this = Default(dim, stator_class, rotor_class) initializes a slice of one stator and
one rotor geometry.

Example usage:
`slice = RFSlice.Default(dimensions_struct, Stator, SPM1)
where `dimensions_struct` is the, well, dimensions struct. `Stator` and
`SPM1` are EMDtool classes, so you need **** not** (and should not) define
any variables by those names. The corresponding geometries will then be
equal to those created by
`Stator(dimensions_struct)`
SPM1(dimensions_struct)`.

### .**RFSlice** Slice class for radial-flux machines.

See `RFSlice.Default` for suggested use.
Documentation for RFSlice/RFSlice
doc RFSlice


