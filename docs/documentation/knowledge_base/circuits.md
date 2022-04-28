---
layout: default
title: Circuits in EMDtool
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Summary

This page summarizes the use of _circuits_ electromagnetic FEA in general, and EMDtool in particular.

# Circuits in electromagnetics

At this point, you have hopefully read the [basics of electromagnetic FEA](../how_emdtool_solves_problems.html). As you hopefully remember, a pure magnetic problem  is of the form

$$ \mathbf{S} \left(\mathbf{a} \right) \mathbf{a} = \mathbf{f} ,$$

from which the only unknown to be solved is the vector of _vector potentials_ $$\mathbf{a}$$.

In the simplest case of a 'circuit', we only have a current density known in advance, in which case only the load vector $$\mathbf{f}$$ is modified.

However, in the general case, each circuit will introduce some extra unknowns to the problem. Often, they can include some net currents flowing in the conductors, and/or some electric potential or voltage
terms depending on the exact formulation used and the time of the circuit.

In any case, let us denote these extra unknown(s) by the vector $$\mathbf{c}$$, where the letter _c_ conviently stands for both Circuit and Constraint (which is the mathematical role of most circuits in FEA).

Thus, our vector of unknowns gets larger and now consists of two distinct parts - the vector potentials and the circuit variables.

$$ \mathbf{a} \rightarrow \begin{bmatrix} \mathbf{a} \\ \mathbf{c} \end{bmatrix} := \mathbf{x} $$.

Furthermore, circuits typically introduce some first-order time-dependence into the problem, changing the governing equation into

$$ \mathbf{S}_\text{tot} \mathbf{x} + \mathbf{M}_\text{tot} \frac{\text{d}\mathbf{x}}{\text{d}t} = \mathbf{f}_\text{tot}. $$

Here, the subscript $$\text{tot}$$ is used to emphasize the fact that the matrices and vectors are no longer the pure-magnetic FE matrices, but instead consist of the magnetic and circuit parts both. The matrix
$$\mathbf{M}_\text{tot}$$ is the so-called mass matrix, its name owning to the first applications of FEA being in linear mechanics.

## Splitting the system of equations

Now, let us apply a similar splitting to the matrices, as we did into our vector of unknowns $$\mathbf{x}$$.

Indeed, we get for the matrices

$$ \mathbf{S}_\text{tot} = \begin{bmatrix} \mathbf{S} & \mathbf{0} \\ \mathbf{0} & \mathbf{0} \end{bmatrix} 
+ \begin{bmatrix} \mathbf{S}_\text{aa} & \mathbf{S}_\text{ac} \\ \mathbf{S}_\text{ca} & \mathbf{S}_\text{cc} \end{bmatrix} $$

and

$$ \mathbf{M}_\text{tot} = \begin{bmatrix} \mathbf{0} & \mathbf{0} \\ \mathbf{0} & \mathbf{0} \end{bmatrix} 
+ \begin{bmatrix} \mathbf{M}_\text{aa} & \mathbf{M}_\text{ac} \\ \mathbf{M}_\text{ca} & \mathbf{M}_\text{cc} \end{bmatrix} $$

On the right-hand side, the first term denotes the pure-magnetic contribution, while the latter is the contribution from the circuits. For clarity, the matrices have been split into blocks, reflecting
the division between the pure-FE and circuit variables.

Similarly, the load vector is split into

$$ \mathbf{f}_\text{tot} = \begin{bmatrix} \mathbf{f} \\ \mathbf{c}_\text{c} \end{bmatrix} $$.

## Multiple circuits

