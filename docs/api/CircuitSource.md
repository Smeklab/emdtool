---
title : CircuitSource
parent: API
grand_parent : Documentation
---
# Summary for: **CircuitSource**  < handle

## Class summary

CircuitSource Base class for circuit sources.

CircuitSource is an abstract base class of circuit sources - general
circuits used to supply a [PolyphaseCircuit](PolyphaseCircuit.html)
(`polyphase_circuit.set_source('circuit', source_object)`).

On the problem level, a CircuitSource adds an arbitrary number of
extra variables to the problem, related to the parent
PolyphaseCircuit. Furthermore, it returns the governing
left-hand-side matrices and the right-hand-side load vector.

Both linear and non-linear circuits are supported.

For example, let the parent PolyphaseCircuit have *m*  phases, and the
CircuitSource add *n*  extra variables. In the final solution vector,
the circuit-related variables are organized as

`[any voltage variables; m phase currents; n source variables]`

The source is only allowed to 'see' the phase currents, meaning the
matrices it returns are of size (m+n) x (m+n), and the vectors of
size (m+n) x 1.

The circuit end-winding matrix (resistance + inductance damping) is
then added to the upper-left corner of the source matrix, before it
gets passed to the governing [MagneticsProblem](MagneticsProblem.html).

Note: the number of unknowns *n*  **must not**  change during the course
of the simulation. In case this is required, *n*  must equal the
largest number of unknowns needed during the entire course of the
simulation, and dummy variables used whenever the real number of
unknowns is smaller than *n* .

## Properties

### .**circuit** - parent [PolyphaseCircuit](PolyphaseCircuit.html) object.


## Methods

Class methods are listed below. Inherited methods are not included.

### .CircuitSource/**get_jacobian** is an undocumented builtin function.

### .CircuitSource/**get_matrix** is an undocumented builtin function.

### .CircuitSource/**get_voltage** is an undocumented builtin function.

### .CircuitSource/**ndof** is an undocumented builtin function.

### .CircuitSource/**set_circuit** is an undocumented builtin function.


