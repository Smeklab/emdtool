---
layout: default
title: How EMDtool solves problems
nav_order: 3
parent: Documentation
math: mathjax2
---

# Summary

This page presents an overview of how `EMDtool` solves electromagnetic problems using finite element analysis. It is good reading for a regular user, and pretty much must-to-read for anybody planning to implement new
functionality. Basic knowledge of electromagnetic FEA is useful.

# Matrix form of the underlying problem

This section describes the matrix equations (e.g. the discretized form of Maxwell's equations to be solved) solved. 

## Linear magnetostatics

In a textboox linear 2D magnetostatic example, one would solve a matrix equation

$$ \mathbf{S} \mathbf{a} = \mathbf{f} $$,

where $$\mathbf{a}$$ is the vector of nodal potentials (i.e. the amplitudes of the z-directional vector potential) and $$\mathbf{f}$$ is the load vector due to currents and permanent magnets. Finally, $$\mathbf{S}$$
is the matrix commonly called the _stiffness_ matrix - thanks to the history of FEA in mechanics and linear elasticity - even though the term _reluctivity matrix_ would be more appropriate.

## Realistic magnetostatics

Unfortunately, the simplest case is not really sufficient for most real-life purposes. Instead, we have several more advanced features to handle:

* Motion of the rotor(s)

* Nonlinear behaviour of iron

* Time-dependence

* Different kinds of circuits


The following subsections briefly describe how each of these is handled mathematically. Then, the specifics of their implementation in `EMDtool` is described in the next Section.

### Motion

The kind of motion that happens in electrical machines - rigid bodies moving, separated by an airgap - if relatively straightforward to model in finite element analysis. Indeed, the stiffness matrix is
split into two parts:

$$ \mathbf{S} := \mathbf{S}_\text{static} + \mathbf{S}_\text{ag} .$$

The matrix $$\mathbf{S}_\text{static}$$ on the right-hand-side denotes the stiffness matrix for the rigid components - like the stator and rotor. Correspondingly, $$ \mathbf{S}_\text{ag} $$ is the _airgap matrix_, i.e. stiffness
matrix for the airgap part.

This splitting-type approach is very practical from the implementation point of view. The stator(s) and rotor(s) can be meshed separately and only once - their mesh does not change due to motion. Furthermore, they
can be modelled as though they were stationary - with no changes to their mesh, and no motion-induced voltage terms to their governing equations (let alone material derivatives).

### Nonlinear behaviour of iron

Ferromagnetic materials generally behave in a nonlinear fashion. On the matrix-equation level, this means that the stiffness matrix $$ \mathbf{S} $$ depends on the vector potential $$ \mathbf{a} $$, and the system
of equations becomes

$$ \mathbf{S} \left(\mathbf{a} \right) \mathbf{a} = \mathbf{f} .$$

The approach used in `EMDtool` is to define the _residual_

$$ \mathbf{r} = \mathbf{f} - \mathbf{S} \left(\mathbf{a} \right) \mathbf{a} $$

and then solve the equation

$$ \mathbf{r} = \mathbf{0} $$

iteratively with the Newton's method:

$$ \mathbf{a}^{k+1} = \mathbf{a}^k - \left(\mathbf{J}^k\right)^{-1} \mathbf{r}^k $$.

Here, the superscript _k_ is used to denote the number of iteration. The matrix $$\mathbf{J}$$ is the [Jacobian matrix](https://en.wikipedia.org/wiki/Jacobian_matrix_and_determinant) of the residual vector 
$$\mathbf{r}$$.

### Time-dependence

The term _'time-dependent'_ is tricky, as different authors may mean different things by it. For instance, it can mean

* The rotor(s) rotating, i.e. their angular position changing with time

* The excitation (e.g. terminal currents) changing with time

* _Damping_ due to induced currents/voltages (or rate-dependent hysteresis, or similar).

On the equation level, the last bullet point introduces a new matrix commonly called the _mass matrix_ $$\mathbf{M}$$ to our governing equation:

$$ \mathbf{S} \mathbf{a} + \mathbf{M} \frac{\text{d}\mathbf{a}}{\text{d}t} = \mathbf{f}. $$

* **NOTE:** The electromagnetic part of motor-problems is almost exclusively handled with the so-called quasi-static approach, meaning there are no second-order time-derivatives thanks to the exclusion of the
displacement current term. For time-dependent motion, introducing the velocity as an additional variable will again yield a first-order system.

The first two bullets - motion and excitation - are handled by updating the airgap matrix and the load vector accordingly.

Finally, to actually _**solve**_ the time-dependent equation, a simple solution is to use the [implicit Euler method](https://en.wikipedia.org/wiki/Backward_Euler_method)

$$ \mathbf{a}^{k+1} = \left( \mathbf{S} + \frac{1}{\Delta t} \mathbf{M} \right)^{-1} \left( \mathbf{f}^{k+1} + \frac{1}{\Delta t} \mathbf{M} \mathbf{a}^{k} \right)  . $$

Note that in _**this context**_ the superscript _k_ is used to denote the time-step, while $$\Delta t$$ is the length of the step.

For improved accuracy, the trapezoidal method can also be used, at the cost of stability. Hybrid methods are also possible.

### Circuits

There are a large number of possible circuit types in 2D analysis. Fortunately, they can _all_ be expressed in the same general form.

Indeed, all circuits can introduce extra unknowns into the problem, on top of the vector potential $$\mathbf{a}$$. As these unknowns appear - mathematically speaking - as _constraints_, let us denote them 
by $$\mathbf{c}$$. The physical meaning of the constraints is often either net currents, a combination of currents and voltages, or the discretized electric scalar potential in the most general case.

Regardless of the physical meaning, our vector of unknowns is now replaced by a vector of two distinct parts

$$ \mathbf{a} \rightarrow \begin{bmatrix} \mathbf{a} \\ \mathbf{c} \end{bmatrix} := \mathbf{x} $$.

Correspondingly, the linear system of equations would now re-written as

$$ \begin{bmatrix} \mathbf{S} + \mathbf{S}_\text{aa} & \mathbf{S}_\text{ac} \\ \mathbf{S}_\text{ca} & \mathbf{S}_\text{cc} \end{bmatrix} 
\begin{bmatrix} \mathbf{a} \\ \mathbf{c} \end{bmatrix} 
= \begin{bmatrix} \mathbf{f}_\text{a} \\ \mathbf{f}_\text{c} \end{bmatrix} $$.

In other words, the system is split into pure-magnetics part (subscript $$\text{aa}$$), pure-constraint part (subscript $$\text{cc}$$), and their mutual coupling (subscripts $$\text{ac}$$
and $$\text{ca}$$). Naturally, the same splitting is applied to the mass matrix $$\mathbf{M}$$.

Please note that the upper-left block also contains the pure-magnetics stiffness matrix $$\mathbf{S}$$, in turn consisting of the static and airgap parts.

### Putting it all together

A typical electrical machine problem includes all of the above features. To recap:

* The machine rotates, with the airgap matrix $$\mathbf{S}_\text{ag}$$ changing at each time-step

* The problem is nonlinear

* There are circuits coupled with the problem.

Thus, the problem is solved via time-stepping, where each step forms a nonlinear problem solved with the Newton's method. 

For the computer doing the crunching, there are of course just _matrices_ involved. But, 
for us regular humans, it is slightly easier to conceptually split the problem into the magnetic and constraint parts as described above. In a typical case, the circuit connections are linear and time-invariant, 
in which case the Jacobian matrix is only formed for the upper-left corner block of the system. However, `EMDtool` _does_ support experimental nonlinear circuits, in which case the $$\mathbf{S}_\text{cc}$$ matrix
is replaced by the corresponding circuit-Jacobian.

# How things are organized in EMDtool

This section will go through how all the above aspects are handled in EMDtool, and more. 

You may have already read the [EMDtool briefly](emdtool_briefly.html) page, which covers the user parts of the typical analysis workflow. Now, this section will go more into detail on the implementation side.

## 1. A MagneticsProblem is initialized

A [`MagneticsProblem`](../api/MagneticsProblem.html) (call it `problem`) is initialized, taking as input a _model_ of type [`MotorModelBase`](../api/MotorModelBase.html) (call it `model`).

All _circuits_ - subclasses of the [`CircuitBase`](../api/CircuitBase.html) are initialized for the `problem`. As there can be several `Circuits`, a container object of the [`CircuitBase`](../api/CircuitBase.html)
class is instantiated to take care of interfacing with the circuits (and can be accessed at `problem.circuits`).

The load vector due to (time-independent, non-demagnetizable) permanent magnets is assembled (`problem.set_load_vector()`). Boundary condition matrix is assembled (`problem.set_boundary_matrix()`).

## 2. Analysis is run

This section describes how analysis is then run inside `EMDtool`. For maximum generality, a time-stepping (transient) model is considered.

The analysis can be split into two parts: initializations and time-stepping.

### 2.1. Initializations

Before the actual stepping, several initialization steps are performed.

#### Solution is initialized

A [`MagneticsSolution`](../api/MagneticsSolution.html) object (call it `solution`) of the correct subclass is initialized. This object will later contain the actual numerical solution array.

Furthermore, the `solution` will know the `problem` it is associated with and thus the `model`, and also know the [`SimulationParameters`](../api/SimulationParameters.html) that are used for this run.

#### Circuits are initialized

The circuits are initialized for this analysis run by calling the `.init_for_simulation` method of `problem.circuits`, using the `solution` as an argument. The `CircuitSet` then calls the `.init_for_simulation` method
of all the Circuits.

#### Circuit matrices are assembled

The linear and time-invariant part (which is usually all there is) of the circuit matrices are assembled by calling the `.get_matrices()` methof of the `problem.circuits`. The `CircuitSet` then, in turn,
calls the `.get_matrices` method of all its `Circuits`, and stacks the returned matrices together.

#### Jacobian constructor is initialized

A [`MagneticsJacobian`](../api/MagneticsJacobian.html) object is instantiated to construct the Jacobian matrix for the problem.

The constructor then instantiates a [`MaterialSet`](../api/MaterialSet.html) object to interface with the [`Materials`](../api/MaterialBase.html) in `model.materials`, and also pre-computes the values of FE
shape and test functions at the Gaussian quadrature points.

Finally, the constructor queries the `MaterialSet` whether or not all the materials are _"symmetric"_, i.e. return a symmetric differential reluctivity tensor. Isotropic anhysteretic materials _are_, while others
generally aren't. Symmetric materials slightly speed up the assembly time of the Jacobian. If needed, unsymmetric behaviour can be forced via an input flag.

### 2.2 Time-stepping is run

The actual time-stepping can also be divided into further steps. Here, we assume the initial condition has already been computed with `problem.solve_harmonic` or `problem.solve_quasistatic`.

#### Quantities are updates for the time-step

Two basic steps are needed.

**1:** The airgap matrix is updated with `model.get_AGmatrix`.

**2:** Load vector is updated. This consists three parts:

1. Updating the contribution of the previous time-step (the $$\frac{1}{\Delta t} \mathbf{M} \mathbf{x}^{k}$$ part)

1. Adding the constant PM contribution

1. Adding the contribution of the circuits, by calling `this.circuits.set_load`, in turn calling the identically-named method of all `Circuits`. 

Additionally, if there are any time-variant but linear circuits in the model, the corresponding circuit matrices are updated here.

#### The nonlinear problem is solved

Next, the solution vector for the next time-step is solved with the Newton's method. At each iterate, the Jacobian matrix is updated by calling the `eval` method of the constructor.

Additionally, if there are any non-linear circuits in the model, the corresponding circuit matrices are updated at each iteration.

## 3. Solution is returned

After all time-steps, the newly-computed solution array is added to the `solution` (the `solution.raw_solution` property), and the solution object is returned.


## 3. Results are post-processed

Finally, interesting outputs are computed from the returned `solution`. Common examples include

* A summary of results by calling `model.results_summary(solution)`

* Flux plot with `model.plot_flux(solution)`

* Torque and net forces on the rotor(s) with `model.compute_torque(solution)`

* Iron losses and their visualization with `MaterialBase.losses(solution)`

* Circuit losses and their visualization with `some_circuit.losses(solution)`

* Several [`PolyphaseCircuit`](../api/PolyphaseCircuit.html) waveforms:

	* `phase_circuit.phase_flux_linkage(solution)`
	* `phase_circuit.terminal_voltage(solution)`
	* ...

* ...

Note: apart from the visualizations, all these are generally included in the summary returned by `model.results_summary`.
