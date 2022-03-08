---
title : LinearSPM
parent: API
grand_parent : Documentation
---
## Summary for LinearSPM
LinearSPM methods:
LinearSPM - is a class.
create_geometry - LinearSPM/create_geometry is a function.
## PROPERTIES
* LinearSPM/conductors is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * LinearSPM/LinearSPM is a constructor.
this = LinearSPM(dim)
Documentation for LinearSPM/LinearSPM
doc LinearSPM

### * Nrep Number of times to replicate elementary mesh.

Nrep(this)

Usually subclassed, but by default returns
this.dimensions.Nrep.
Help for LinearSPM/Nrep is inherited from superclass GeoBase

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for LinearSPM/create_geometry is inherited from superclass GeoBase

### * LinearSPM/d_axis_angle is a function.
a = d_axis_angle(this)

### * sector_shift Shift in x-direction for meshing.

How much the elementary geometry should be moved while
replicating the elementary mesh.
Help for LinearSPM/sector_shift is inherited from superclass AxialGeometry

