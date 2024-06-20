---
title : ModelSlice
parent: API
grand_parent : Documentation
---
# Summary for: **ModelSlice**  < handle

## Class summary

ModelSlice Base class for representing slices.

This class is intended to be used for sliced models, i.e. models
where the essentially the same 2D geometry is repeated multiple
times, with perhaps some differences such as the rotor angle or the
slice radius of a sliced axial-flux model.

Model hierarchy-wise, a ModelSlice resides between an actual Model,
and the GeoBase geometries.

Specifically, a ModelSlice class supports the following
functionality:
* containing a copy of the model dimensions
* containing the geometries of a single slice, in
`this.components`, further grossly divided into stators and rotors
* containing zero, one, or multiple airgaps
* adding the contained geometries to the parent model, on request
* adding the containe dairgaps to the parent model, on request

## Properties

### .**airgaps** - airgaps added

### .**component_types** - type of each component, "stator"/"rotor"

### .**components** - all stators and rotors added

### .**dimensions** - dimensions struct

### .ModelSlice/**rotor** is a property.

### .ModelSlice/**stator** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_gap** Add an airgap to the slice.

add_gap(this, arg1, arg2) adds an airgap to the slice.

The input arguments `arg1` and `arg2` can both either be
* a stator/rotor geometry object
* A struct s with two fields:
* s.component = a stator/rotor geometry component
* s.boundary = name (char) of the boundary in
s.component.boundaries that the gap attachs to.

### .**add_gaps_to_model** Add airgaps to the parent model.

add_gaps_to_model(this, model) adds the contained airgap to `model`.

### .**add_geometries_to_model** Add geometries to the parent model.

add_geometries_to_model(this, model, slice_number) adds the geometries of
this slice to the parent model `model` (assumed a subclass of
`MotorModelBase`) as the `slice_number`th slice.

### .**add_rotor** Add a rotor component to the slice.

add_rotor(this, geometry) adds the `geometry` to the slice as a
rotating component. The geometry can be either a non-initialized
`GeoBase` object, or the corresponding class name.

### .**add_single_component** Low level adder method.

add_single_component(this, geom) adds the geometry `geom` to `this`. Not
recommended to be called as such; the main entry points should be the
`add_stator` and `add_rotor` methods.

### .**add_stator** Add a stator component to the slice.

add_stator(this, geometry) adds the `geometry` to the slice as a
non-rotating component. The geometry can be either a non-initialized
`GeoBase` object, or the corresponding class name.

### .**initialize_geometry** Initialize the given geometry.

init_geom = initialize_geometry(this, geom) (re-)initializes the given
geometry `geom`, by (re-)calling the corresponding class constructor.


