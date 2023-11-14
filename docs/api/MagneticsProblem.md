---
title : MagneticsProblem
parent: API
grand_parent : Documentation
---
# Summary for: **MagneticsProblem**  < handle

## Class summary

MagneticsProblem Class for solving magnetics problems.

this = MagneticsProblem( model )

Construct problem, where *model*  is an instance of RFmodel or
MotorModelBase class.

Main methods:

* solve_static : solve static problem with no damping effects.

* solve_harmonic : solve harmonic problem.

* solve_quasistatic: similar to harmonic, but without the harmonic-reluctivity model used in `solve_harmonic`

* solve_stepping : solve time-stepping problem.

Most solution methods utilize a relaxed Newton iteration approach. On any given time-step, the first
`pars.maximum_regular_iterations` are undamped. If this number of iterations is exceeded, damping is performed at each step.
This damping if performed by first computing the regular Newton step direction, and progressively halving the step length
until the residual norm is strictly reduced. A maximum of `pars.maximum_damping_iterations` halving steps is performed.

## Properties

### .**model** - The [MotorModelBase](MotorModelBase.html) (or compatible) model object associated with the problem


## Methods

Class methods are listed below. Inherited methods are not included.

### .MagneticsProblem/**get_component_property** is a function.
prob = get_component_property(this, component, property, pars)

### .MagneticsProblem/**set_boundary_matrix** is a function.
this = set_boundary_matrix(this, varargin)

### .**set_load_vector** Set PM-load vector.

set_load_vector(this) computes the load vector (constant, time- and
solution independent) due to permanent magnet sources in
`this.model.PMs`.

### .**solve_harmonic** Harmonic solution of a MagneticsProblem.

Solves a Harmonic magnetics problem, with sinusoidal time-variations.

solution = solve_harmonic(this, pars), where

* pars : a SimulationParameters object

* solution : a HarmonicSolution object.

Note: setting pars.isDC = true is recommended for synchronous machines;
in this case the rotor is rotated by 90 electrical degrees for the
imaginary/sinusoid component of the solution, compared to the
real/cosinusoid part. This provides an approximation of the effect of
rotor saliency.

NOTE: The real and imaginary fields **are**  coupled in the rotor, which is
incorrect for synchronous machines (as f_rotor = 0). As a result, the rotor
reluctivity gets overestimated. This may be fixed in a future release. In
the meantime, see ´MagneticsProblen.solve_quasistatic´.

### .**solve_quasistatic** Quasi-static solution a MagneticsProblem.

Almost like solve_harmonic with the 'isDC' parameter set to true; but
only damping-related coupling between the d- and q-axes.

NOTE: Will probably be merged into solve_harmonic in the future.

### .**solve_static** Static solution of a MagneticsProblem.

Solves a static magnetics problem, with no damping effects.

solution = solve_static(this, pars), where

* pars : a SimulationParameters object

* solution : a StaticSolution object.

### .**solve_stepping** Time-stepping solution of a MagneticsProblem.

Solves a time-stepping problem with damping (eddy- and voltage-like
terms) included.

solution = solve_harmonic(this, pars), where

* pars : a SimulationParameters object

* solution : a SteppingSolution object.

Note: Initial conditions have to be computed first, usually by running
this.solve_harmonic or this.solve_quasistatic. Alternatively, one can set
a `MagneticsSolution` object to `this.results.initial_solution`, or a
solution vector to `this.results.Xh`.

### .MagneticsProblem/**sweep_harmonic** is a function.
solutions = sweep_harmonic(this, pars)


