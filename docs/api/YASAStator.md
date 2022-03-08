---
title : YASAStator
parent: API
grand_parent : Documentation
---
## Summary for YASAStator
YASAStator Axial yokeless stator.

Can be modelled as half or full.
## PROPERTIES
* YASAStator/winding is a property.

* YASAStator/winding_spec is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * Nrep Number of times to replicate elementary mesh.

Nrep(this)

Usually subclassed, but by default returns
this.dimensions.Nrep.
Help for YASAStator/Nrep is inherited from superclass GeoBase

### * YASAStator Axial yokeless stator.

Can be modelled as half or full.
Documentation for YASAStator/YASAStator
doc YASAStator

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for YASAStator/create_geometry is inherited from superclass GeoBase

### * sector_shift Shift in x-direction for meshing.

How much the elementary geometry should be moved while
replicating the elementary mesh.
Help for YASAStator/sector_shift is inherited from superclass AxialGeometry

### * winding_angle Return winding angle.

