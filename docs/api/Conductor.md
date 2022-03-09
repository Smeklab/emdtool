---
title : Conductor
parent: API
grand_parent : Documentation
---
## Summary for Conductor
Conductor Base class for conductors.

Typical subclasses:

* [StrandedConductor](StrandedConductor.html) : for infinite stranded conductors

* [SolidConductor](SolidConductor.html) : solid material

* [SplitConductor](SplitConductor.html) : for conductors that cross the boundary of the
elementary geometry. Can be either solid or stranded.

Each conductor consists of one domain (two domains in the case of
split conductors).
## PROPERTIES
* Conductor/domain is a property.

* Conductor/in_circuit is a property.

* Conductor/type is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * Conductor/copy is a function.
obj = Conductor

### * Conductor.create is a function.
c = Conductor.create(domain, varargin)

### * Conductor/domains is a function.
d = domains(this)

### * Conductor/elements is a function.
els = elements(this)

### * Conductor/set_matrices is a function.
obj = Conductor

