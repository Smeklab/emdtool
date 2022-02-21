---
layout: default
title: Jacobians in EMDtool
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Summary

This page summarizes the modern use of Jacobian matrices in electromagnetic FEA in general, and EMDtool in particular.

# Jacobians in electromagnetic FEA

As you have hopefully [read before](../how_emdtool_solves_problems.html), typical nonlinear electromagnetic finite-element software has to solve the following nonlinear matrix equation:

$$ \mathbf{S} \left(\mathbf{a} \right) \mathbf{a} = \mathbf{f} ,$$

which is commonly achieved by solving the residual equation

$$ \mathbf{r} := \mathbf{f} - \mathbf{S} \left(\mathbf{a} \right) \mathbf{a} = \mathbf{0}$$

with the Newton's method.

For this purpose, the Jacobian matrix $$\mathbf{J}$$ with the entries

$$\mathbf{J}_{ij} = \frac{\partial \mathbf{r}_i}{\partial a_j} $$

is needed.

Some older references form the Jacobian by starting directly from the matrix-vector product equation. While correct, this derivation is rather tedious to follow. Luckily, other authors
begin directly from the strong form (math-speak for the original differential equation rather than the matrix problem) of the residual

$$ r = \nabla \times \mathbf{H} = 0 . $$

This approach does not completely avoid tediousness either, but those willing to put up with it can check [the dedicated pdf here](Modern_treatment_of_jacobians.pdf).

For others, it suffices to state that the end-result for the entries is

$$\mathbf{J}_{ij} = \int_S \left( \nabla \times N_i \right) \cdot \left( \frac{\partial \mathbf{H}}{\partial \mathbf{B} } \nabla \times N_j \right) \mathrm{d}S . $$

Here:

* $$S$$ is the surface (volume in 3D) to integrate over

* $$N$$ are the finite-element shape / test / trial functions. Nodal elements/functions are used in 2D, understood as z-directional vectors, while 3D utilizes Nedelec vector elements.

* $$\frac{\partial \mathbf{H}}{\partial \mathbf{B} }$$ is the so-called _differential reluctivity tensor_, in practice a 2x2 matrix (3x3 in 3D).

This, naturally, brings us to how the Jacobians - and large parts of nonlinearity in general - are handled in `EMDtool`.