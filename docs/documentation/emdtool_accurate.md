---
layout: default
title: How accurate is EMDtool
nav_order: 7
parent: Documentation
---

# How accurate is EMDtool?

Shortly put, in terms of accuracy, EMDtool is on par with any other commercial or open-source software. It may lose a bit in some aspects, and will certainly win in others. For a deeper discussion, please read on.

# How accurate is finite-element analysis?

EMDtool is based on finite-element analysis, so it makes sense to start with the accuracy of finite element analysis in general. For instance, we can look at three factors:

* How well does the mathematical model represent the actual physics.

* How well does our model represent the reality.

* How precisely is our FE model solved.

## Mathematics versus reality

The first factor boils down in the ability of Maxwell's equations to represent reality. We can probably safely say that they are good enough for our purposes - we are not dealing with quantum gravity nor
relativistic effects here.

Admittedly, we are typically ignoring the displacement current term of the equations, for its contribution is typically rather negligible. However, the topic _is_ of some increasing importance due to the ever-increasing
switching frequencies. But, pretty much every other software does the same, for now.

## Model versus reality

While the mathematics are more or less exact, our _models_ don't reflect reality nearly as well. The associated differences can be divided (for instance) into two categories:

* Aspects that are neglected on purpose. Examples include doing 2D analysis instead of 3D, and simplifications to the geometry modelled. Many statistical phenomena also fall within this category,
like circulating currents in random-wound stranded windings, or inter-bar currents in induction machines.

* Aspects that _should_ be modelled accurately but doing so is difficult. Prime examples include iron losses (especially due to material-degrading phenomena like laser-cutting and punching, shrink-fitting
stresses, and so on), the exact end-winding length, or the exact dimensions due to manufacturing tolerances etc.

## Solution versus mathematics

Even though the mathematics underlying finite elements are pretty much exact, our solution isn't. Finite elements _always_ deal with an approximate solution, the accuracy of which depends the most on the mesh density.
Spend more time computing on a denser mesh, and you'll get a solution that is closer to the exact solution of the equations.

Now, it _is_ possible to perform adaptive mesh refinement, to refine the mesh only where it **probably** counts. EMDtool does not support this, while some competitors may do so. Nevertheless, for a given overall
mesh density, with models being otherwise equal, you can trust that EMDtool will return a solution on par with any other properly-implemented competitor out there.

# Factors influencing EMDtool accuracy

In practice, one is probably interested in getting the most accuracy out of EMDtool. Again, this can be divided into two categories:

1. Solving the **existing model** as accurately as possible, i.e. getting as close to the exact solution to the quasi-static Maxwell's equations.

1. Getting the model to represent reality as well as possible.

## Solving the model accurately

Solving the existing model as accurately as _reasonably_ possible is relatively simple, boiling down to two steps:

* Using a sufficiently dense mesh

	* This can be modified using the `GeoBase.scale_mesh_density` function, or via input arguments to some geometry templates.

* Using a sufficiently short time-step

Please note the pairing of the words 'reasonably' and 'sufficiently'. While EMDtool _will_ converge towards the exact solution of the Maxwell's equations with a dense-enough mesh and a short-enough time-step, 
this will also result in an exponential increase in CPU time. This is universal to **any** software.


