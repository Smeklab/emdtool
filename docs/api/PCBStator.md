---
title : PCBStator
parent: API
grand_parent : Documentation
---
## Summary for PCBStator
PCBStator methods:
PCBStator - is a class.
create_geometry - PCBStator/create_geometry is a function.
## PROPERTIES
* PCBStator/winding_spec is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * Nrep Number of times to replicate elementary mesh.

Nrep(this)

Usually subclassed, but by default returns
this.dimensions.Nrep.
Help for PCBStator/Nrep is inherited from superclass GeoBase

### * PCBStator/PCBStator is a constructor.
this = PCBStator(dim)
Documentation for PCBStator/PCBStator
doc PCBStator

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for PCBStator/create_geometry is inherited from superclass GeoBase

### * sector_shift Shift in x-direction for meshing.

How much the elementary geometry should be moved while
replicating the elementary mesh.
Help for PCBStator/sector_shift is inherited from superclass AxialGeometry

### * winding_angle Return winding angle.

