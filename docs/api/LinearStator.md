---
title : LinearStator
parent: API
grand_parent : Documentation
---
## Summary for LinearStator
LinearStator methods:
LinearStator - is a class.
create_geometry - LinearStator/create_geometry is a function.
## PROPERTIES
* LinearStator/winding is a property.

* LinearStator/winding_spec is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * LinearStator/LinearStator is a constructor.
this = LinearStator(dim)
Documentation for LinearStator/LinearStator
doc LinearStator

### * Nrep Number of times to replicate elementary mesh.

Nrep(this)

Usually subclassed, but by default returns
this.dimensions.Nrep.
Help for LinearStator/Nrep is inherited from superclass GeoBase

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for LinearStator/create_geometry is inherited from superclass GeoBase

### * s = min(this.p(1,:));

### * winding_angle Return winding angle.

