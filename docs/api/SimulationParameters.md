---
title : SimulationParameters
parent: API
grand_parent : Documentation
---
# Summary for: **SimulationParameters**

## Class summary

SimulationParameters Parameters for MagneticsProblem solutions.

This class is intended for supplying parameters to the
`MagneticsProblem` class.

**** NOTE** Unlike most `EMDtool` classes, this is NOT a handle class,
meaning that changes to any of the class properties, made after
giving an instance of the class as an argument to a
[MagneticsProblem](MagneticsProblem.html) solve method will not be propagated to the problem
object.

## Properties

### .**N_periods** Number of electrical periods to simulate.

### .**N_stepsPerPeriod** Number of time-steps per electrical period

Number of time-steps per electrical period `1/this.f`.

### .**alpha2** Time-stepping scheme parameter.

A parameter for specifying the time-stepping scheme, with the
following options:
* 2 : Backward (or implicit) Euler. The most robust options,
but can sometimes require a short step length for reaching a
given accuracy.
* 1 : Pure trapezoidal rule (or Crank-Nicolson according to
some authors. Can result in non-decaying spurious oscillations.
* 1 < alpha2 < 2 : A hybrid approach. Often the best of both
words.

See also `SimulationParameters.use_hybrid_stepping`

### .**convergence_tolerance** Newton convergence tolerance.

Newton iterations are performed until the relative residual, i.e. the norm
of the Newton residual divided by max(norm(load_vector), 1) is strictly smaller
than the convergence tolerance.

### .**f** Supply frequency.

Supply electrical frequency. For non-typical problems with no
clearly defined supply frequency, the frequency can be understood
purely via the time-step length, through `this.N_stepsPerPeriod`

### .**maxIter** - maximum number of Newton iterations

### .**maximum_damping_iterations** Maximum number of damping iterations.

Number of damping iterations to perform for each Newton step (after the
aforedescribed number of regular steps). On each damping step, the step size
is halved, until the residual norm strictly decreases or the maximum number is
reached.

### .**maximum_regular_iterations** Number of maximum regular iterations.

The maximum number of pure-Newton steps to perform, with the full step size.
The count restarts for each time-step, obviously.

### .**rel** - relaxation factor for iterations, default = 1 (no relaxation)

### .**rotorAngle** Rotor angle.

Used directly in static analysis, in which an array of angles can
be specified. In harmonic or stepping analysis, a scalar value
must be given, corresponding to constant bias in the rotor angle.

### .**silent** - display progress in command line, true/false

### .**slip** Rotor slip.

Used in harmonic and time-stepping analysis.

### .**ts** - time-step time-stamps

### .**use_cached_Jacobian** Use saved Jacobian constructor.

If true, repeated calls to the solve methods of
[MagneticsProblem](MagneticsProblem.html) will use the same [MagneticsJacobian](MagneticsJacobian.html) object.
Defaults to true.

### .**use_hybrid_stepping** Use a hybrid time-stepping scheme.

Use a hybrid time-stepping scheme in which the implicit Euler
method is used for those nodal potentials (pure FE-part of the
model, nodal values of magnetic vector potentials) that are fully
non-damped aka do not appear in the FE part of the problem
mass/damping matrix. For the remaining nodes, and all circuit
variables, the scheme defined by `pars.alpha` is used.

This benefit can eliminate or limit spurious oscillations
sometimes (rarely) occurring with hybrid trapezoidal-IE stepping
schemes (with pars.alpha2 strictly less than 2).

Defaults to true.


## Methods

Class methods are listed below. Inherited methods are not included.

### .default parameters
Documentation for SimulationParameters/SimulationParameters
doc SimulationParameters

### .SimulationParameters/**dispf** is a function.
dispf(this, varargin)

### .SimulationParameters/**miscpar** is a function.
p = miscpar(this, name)


