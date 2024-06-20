---
title : AFSlice
parent: API
grand_parent : Documentation
---
# Summary for: **AFSlice**  < [ModelSlice](ModelSlice.html)

## Class summary

AFSlice methods:
AFSlice - is a class.
Default - Common stator-rotor slice.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**AFSlice**/AFSlice is a constructor.
obj = AFSlice
Documentation for AFSlice/AFSlice
doc AFSlice

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


