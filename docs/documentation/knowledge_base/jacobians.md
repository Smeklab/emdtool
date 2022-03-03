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

* $$ \frac{\partial \mathbf{H} }{\partial \mathbf{B} } $$ is the so-called _differential reluctivity tensor_, in practice a 2x2 matrix (3x3 in 3D).

This, naturally, brings us to how the Jacobians - and large parts of nonlinearity in general - are handled in `EMDtool`.

# Jacobians in `EMDtool`

In `EMDtool`, Jacobian assembly is handled by an [`MagneticsJacobian`](../../api/MagneticsJacobian.html) object `jacobian`. The underlying process can be divided into two parts: initialization and evaluation.

## Initialization

A few steps are performed at the initialization stage:

1. A [`problem`](../../api/MagneticsProblem.html) is given as an input argument.

1. A [`MaterialSet`](../../api/MaterialSet.html) object `materials` is initialized to interface with the Materials in `model.materials`

1. Shape and test function values at [the integration points](https://en.wikipedia.org/wiki/Gaussian_quadrature) are pre-computed and stored. 
(Integration points and weights are queried from `model.mesh.msh.get_assembly_parameters`.)

## Evaluation

In the evaluation stage, the Jacobian matrix $$\mathbf{J}$$ and the residual vector $$\mathbf{r}$$ are evaluated by calling `jacobian.eval`. The input arguments are

* The current iterate for the solution $$\mathbf{a}^k$$.

* The number of the time-step $$n$$

* The time $$t$$, optional

In most cases - namely non-hysteretic materials - only the iterate has any effect. But, for generality, namely hysteretic-style materials, both $$n$$ and $$t$$ (if given) are passed on to `materials.set_step`.

The evaluation process then has the following steps:

1. The index of the time-step and the time (if given) are passed to `materials.set_step`. The `MaterialSet` then calls the `.set_step` method of each material. In typical non-hysteretic materials (one would use
the [`Material`](../../api/Material.html) class 90 % of the time), this does nothing, while hysteretic materials implement their own methods.

1. The flux density vector is computed for each element and quadrature point and stored as a wide array.

1. The differential reluctivity, as well as the field strength $$\mathbf{H}$$ is computed by calling `materials.evaluate_differential_reluctivity`. The `MaterialSet` then calls the identically-named method of 
each material. As an input argument to each material, it only uses the subset of the flux density array that corresponds to the elements comprising the material in question. Furthermore, it assigns the return values to
correct positions in the final output of `MaterialSet`, namely a wide array of the field strengths and the differential reluctivity tensors in stacked [column-major format](https://en.wikipedia.org/wiki/Row-_and_column-major_order).

1. The Jacobian $$\mathbf{J}_{ij}$$ and residual $$\mathbf{r}_i$$ entries are computed and stored.

1. The final Jacobian matrix and residual vector are computed and returned.

**NOTE:** The `MagneticsJacobian` only returns the 'material contribution' to the residual vector. In the final nonlinear problem being solved, the right-hand-side also has contributions
from the loads (circuits and permanent magnets typically), the damping effect from the previous time-step via the mass matrix, and the reluctivity contribution from the airgap matrix. Please again see 
[this page](../how_emdtool_solves_problems.html).
