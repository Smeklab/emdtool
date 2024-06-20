---
title : AFModelWithSkew
parent: API
grand_parent : Documentation
---
# Summary for: **AFModelWithSkew**  < [AFmodel2](AFmodel2.html) & [SlicedMotorModel](SlicedMotorModel.html)

## Class summary

RFModelWithSkew Skewed and sliced radial-flux model.

See `RFModelWithSkew.create_simple` for typical usage.

On the implementation level, all slices are initialized and meshed
origin-centric, without considering skewing. Thus, `this.mesh` will
generally contain overlapping meshes. Virtual translations (on
copies of coordinates) will be performed during plotting, while
virtual rotations will be performed for different rotors during
airgap matrix and torque evaluation, and plotting both.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**compute_torque** Compute torque and forces.

[T, Fx, Fy] = compute_torque(this, solution) computes the torques and net
rotor forces acting over each airgap.

Skewing is considered by overwriting the default rotor angles and using
the `'rotor_angle', angles_here` input syntax of
`SlidingAirgapBase.compute_torque`.

### .**create_simple** Create a sliced stator-rotor model.

motor = create_simple(dim, stator_class, rotor_class) creates a sliced
radial-flux motor model `motor` with one stator and one rotor per each
class. The number of slices is specified by the field `number_of_slices`
in the dimensions struct `dim`.

** ** *PLEASE NOTE** Copies of the supplied geometries are created by this
class. Thus, even if a valid [GeoBase](GeoBase.html) object is given as an input, the
resulting `RFModelWithSkew` model with **** not** contain the original
geometry object as a component.

Skewing, if any, is parsed by `this.set_component_angles`.

Underneath, this method creates a set of `RFSlice` objects by calling
`RFSlice.Default(dim_slice, stator, rotor)`.
The slice dimensions are otherwise a copy of `dim`, only the slice
effective length is shorted by
`dim_slice.leff = dim.leff / dim.number_of_slices;`.
Finally, `this.finalize` is called.

### .**finalize** Finalize sliced model.

This method performs the following steps
* call the `add_gaps_to_model` method of each slice.
* call the parent class (`RFmodel`) implementation of `finalize`.
* call `this.parse_sliced_circuits`.
* call `this.set_component_shifts`.
* call `this.set_component_angles`.

### .**get_AGmatrix** Get airgap matrix.

Similar to the `MotorModelBase` method, only angle-biasing is performed
to account for skewing.

### .AFModelWithSkew/**get_plot_mesh** is an undocumented builtin AFModelWithSkew method.

### .AFModelWithSkew/**get_rotated_nodes** is a function.
get_rotated_nodes(this, varargin)

### .**plot_raw_airgap_flux** Plot airgap fluxes.

Similar to the `MotorModelBase` method, only some angle-hacking is
performed to correctly account for skewing.

### .**set_component_angles** Parse and set component angles.

set_component_angles(this) sets the bias angle for each rotor slice, to
account for skewing. If `this.dimensions.skew_angle` is an array (of
correct size), it is directly used for setting the skew angles. If it is
a scalar,  uniform distribution between `[-0.5, 0.5]*skew_angle` is used.

### .**set_component_shifts** Set xy-shifts for the geometry components.

set_component_shifts(this) tries to parse suitable shifts for the
components of each slice, so that the slices do not overlap during
visualization.

### .**to_plot_frame** Transform coordinates to plot frame.

In general, this function transforms coordinates and vectors from the
mesh frame (origin-centric without skewing) to the plot frame, with
different slices translated to avoid overlapping, with extra rotations if
needed to account for skewed rotors.

Several input options are supported:
* y = to_plot_frame(this, x) corresponding to zero-angle case.
* y = to_plot_frame(this, x, rotor_angle) default case. The input
coordinate vector is assumed to be the same size as the full mesh
coordinates.
* y = to_plot_frame(this, x, rotor_angle, component) only applies the
translations and skews according to the single component given.
* y = to_plot_frame(this, x, rotor_angle, component, "vector") treats
the input as a vector, only performing rotations and not translations.


