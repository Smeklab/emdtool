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

### .**get_jacobian** Return the Jacobian matrix and residuel vector.

[J, res]  = get_jacobian(this, problem, type, t, kstep, inds, Xprev, Xiter)
returns the Jacobian matrix and residual vector of the
CircuitSource. This method is called inside the Newton iteration.

The input arguments include:
* problem : governing [MagneticsProblem](MagneticsProblem.html)
* type : type of problem, 'static', 'harmonic', or 'stepping'
* t : instantenous time
* kstep : number of time-step
* inds : indices to phase-current variables in the solution
* Xprev : solution at the previos time-step.
* Xiter : current iterate

### .**get_matrix** Return the linear governing matrix.

S = get_matrix(this, problem, type, t, kstep, inds, Xprev)
returns the linear (but generally time-variant) matrix of the
CircuitSource matrix. This method is called once every time-step,
but not inside the Newton iteration.

The input arguments include:
* problem : governing [MagneticsProblem](MagneticsProblem.html)
* type : type of problem, 'static', 'harmonic', or 'stepping'
* t : instantenous time
* kstep : number of time-step
* inds : indices to phase-current variables in the solution
* Xprev : solution at the previos time-step.

### .**get_voltage** Return the linear source vector.

U = get_voltage(this, circuit, problem, type, t, kstep, inds, Xprev)
returns the linear but time-variant source vector associated with
the Source. This method is called once every time-step, before the
Newton iteration.

Input arguments as in CircuitSource.get_matrix.

### .**ndof** Number of unknowns associated with this source.

n = ndof(this) returns the number of extra unknowns associated
with this source.

### .**set_circuit** Set parent circuit.

set_circuit(this, circuit) sets the parent [PolyphaseCircuit](PolyphaseCircuit.html)
object `circuit`, **and**  optionally sets `circuit.is_linear` to
`false` if the source is nonlinear.


