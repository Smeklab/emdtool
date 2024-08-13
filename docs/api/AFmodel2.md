---
title : AFmodel2
parent: API
grand_parent : Documentation
---
# Summary for: **AFmodel2**  < [MotorModelBase](MotorModelBase.html)

## Class summary

AFmodel2 methods:
AFmodel2 - is a class.
to_plot_frame - Transform coordinates to plot frame.

## Properties

### .AFmodel2/**axial_symmetry_sectors** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**AFmodel2**/AFmodel2 is a constructor.
this = AFmodel2(varargin)
Documentation for AFmodel2/AFmodel2
doc AFmodel2

### .AFmodel2/**initialize_airgap** is a function.
initialize_airgap(this)

### .AFmodel2.**simple** is a function.
motor = AFmodel2.simple(dim, stator, rotor)

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


