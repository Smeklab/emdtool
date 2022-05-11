---
layout: default
title: Circuits in EMDtool
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Summary

This page summarizes the use of _circuits_ electromagnetic FEA in general, and EMDtool in particular. Please note that the concept 'circuit' here refers to anything with a current density - whether imposed
or induced, uniform or eddy-esque - not just intentionally-wound windings. Thus, circuits include also solid conductive shafts and permanent magnets, not just three-phase windings and rotor cages.

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

$$ \mathbf{f}_\text{tot} =  \begin{bmatrix} \mathbf{f} \\ \mathbf{0} \end{bmatrix} +
\begin{bmatrix} \mathbf{f}_{a,c} \\ \mathbf{f}_\text{c} \end{bmatrix} $$.

Again here, the first right-hand-side term refers to the pure-FE contribution, while the latter vector is the circuit contribution. Note that the circuits can contribute both to the first blow-row of the
vector (typically via an imposed current density) and to the second row (typically via voltage equations of some kind).

## Multiple circuits

Often, there are multiple circuits in a FE model. These circuits are also (typically, and so far always in EMDtool) **independent** of each other - 
only interacting via the vector potential $$\mathbf{a}$$, not the circuit variables $$\mathbf{c}$$. This
independence is - luckily - reflected in the structure of the circuit matrices. 
 
Indeed, let us denote the different circuit by the running subscript $${}_1, {}_2, \ldots$$. Also, let us divide the vector of unknowns into the vector potential and the contribution of each circuit
separately:

$$ \mathbf{x} = \begin{bmatrix} \mathbf{a} \\ \mathbf{c}_1 \\ \mathbf{c}_1 \\ \vdots \end{bmatrix} $$


Then, we can apply a similar splitting to the circuit arrays:

$$\mathbf{S}_\text{aa} = \mathbf{S}_{\text{aa},1} + \mathbf{S}_{\text{aa},2} + \ldots$$

$$ \mathbf{S}_\text{ac} = \begin{bmatrix} \mathbf{S}_{\text{ac}, 1} & \mathbf{S}_{\text{ac}, 2} & \ldots\end{bmatrix} $$

$$ \mathbf{S}_\text{ca} = \begin{bmatrix} \mathbf{S}_{\text{ca}, 1} \\ \mathbf{S}_{\text{ca}, 2} \\ \vdots\end{bmatrix} $$

$$ \mathbf{S}_\text{cc} = \begin{bmatrix} \mathbf{S}_{\text{cc}, 1} & & \\ & \mathbf{S}_{\text{cc}, 2} & \\ & & \ddots \end{bmatrix} $$

$$ \begin{bmatrix} \mathbf{f}_{a,c} \\ \mathbf{f}_\text{c} \end{bmatrix} = \begin{bmatrix} \mathbf{f}_{a,c,1} \\ \mathbf{f}_\text{c,1} \end{bmatrix} + 
\begin{bmatrix} \mathbf{f}_{a,c,2} \\ \mathbf{f}_\text{c,2} \end{bmatrix} + \ldots $$

So, what this means that the contribution of each circuit can be assembled independently, with no regard to the number and type of other circuits in the problem. The individual contributions are then
combined (by the [`CircuitSet`](../../api/CircuitSet.html) helper class) via either summation or matrix block operations into the final circuit matrices, after which the actual solver can focus on the general
form of the problem

$$ \mathbf{S}_\text{tot} \mathbf{x} + \mathbf{M}_\text{tot} \frac{\text{d}\mathbf{x}}{\text{d}t} = \mathbf{f}_\text{tot}. $$

# Useful miscellaneous information

Next, several useful bits of miscellaneous circuit-related information is presented.

## AV formulation

Most commonly, the so-called AV mathematical formulation is used for handling circuits in finite-element analysis. It's background is in the 
[potential formulation of Maxwell's equations](https://en.wikipedia.org/wiki/Mathematical_descriptions_of_the_electromagnetic_field#Potential_field_approach), where the electric field is written as

$$ \mathbf{E} = -\nabla V - \frac{\partial \mathbf{A}}{\partial t} $$,

where $$\mathbf{V}$$ is called the _electric scalar potential_.  

From the electric field, the current density is then known to be $$\mathbf{J} = \sigma \mathbf{E}$$, where
$$\sigma$$ is the electrical conductivity. As the typically-analysed frequency ranges have no charge concentration to speak of, the governing equation for the newly-introduced thus-far unknown scalar potential
is the current conservation condition

$$ \nabla \cdot \mathbf{J} = \nabla \cdot \left( -\nabla V - \frac{\partial \mathbf{A}}{\partial t} \right) = 0 $$.

## AVI-formulation

The AV formulation is sufficient for handling massive conductive bodies in 3D analysis. It does work in 2D, too, but does not alone allow relating any _current_ variables to the current density distribution.
In order to do this, some extra steps are needed.

Before moving on to currents, one detail: In 2D electromagnetics, the electric field typically has a component in the z-direction only. 
Therefore, it is sometimes expressed with the voltage difference over the ends (in z-direction) of a conducting body

$$\nabla V = - \frac{u}{l} $$.

Here, $$u$$ is the voltage difference, while $$l$$ is the length of the problem in the z-direction (out-of-plane).

Incidentally, this modified AV formulation allows to naturally introduce currents into the problem. In 2D analysis, the net (axial) current in a conducting body is

$$I = \int\limits_{A_\text{conductor}} \mathbf{J} \mathrm{d}S = \sigma \int\limits_{A_\text{conductor}} { \frac{u}{l} - \frac{\partial \mathbf{A}}{\partial t} 
 } \mathrm{d}S $$.
 
Now, by introducing the cross-sectional area of the conductor $$A$$, the first term of the integral is simplified into

$$ \sigma \int\limits_{A_\text{conductor}} \frac{u}{l} \mathrm{d}S = \frac{\sigma A}{l} u = \frac{1}{R} u $$,

where $R$ is the DC resistance of the conducting body, again in the z-direction. Substituting this back into the net current equation, multiplying it by $$R$$ and re-ordering and simplifying a bit yields

$$ u = RI + \frac{l}{A} \int\limits_{A_\text{conductor}} \frac{\partial \mathbf{A}}{\partial t} \mathrm{d}S $$.

Although somewhat tedious to derive, this equation is very easy to relate to traditional circuit analysis. Indeed, it simply states that the **net axial voltage over the conductor is the sum of the 
DC-resistance-related voltage drop plus the average induced voltage**.
 

## Circuit connections

When electric motors are of interest, simply modelling conductive bodies is rarely enough. Instead, those bodies must be connected to each other in a suitable fashion, to form actual circuits. While there
are probably several ways to do this, the main approach used in EMDtool is described next.

Let us consider the more-general case of massive solid conductors, such as the cage of an induction motor rotor.

