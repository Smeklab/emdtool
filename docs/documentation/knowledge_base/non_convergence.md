---
layout: default
title: Dealing with non-convergence
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Dealing with non-convergence

Sometimes, non-linear `EMDtool` iterations may not converge. The following steps may help:

## Check that the model settings are correct

For instance, that your mesh is not broken, or that your supply is not off by an order of magnitude and trying to drive 100 Teslas.

## Tweak BH data

Giving the keyword argument `'monotonicity_factor'` and a value above zero and below 1, to functions such as `SteelLibrary.create` or more directly to `Material.initialize_material_data` often results
in much better convergence behaviour.

## Increase the number of iterations

Sometimes, setting the `maxIter` property of `SimulationParameters` is enough.

## Increase the number of damping iterations

Increasing the `maximum_damping_iterations` property of `SimulationParameters` can also help.

## Fit an analytical BH data

The `SteelLibrary` class has a method for fitting an analytical BH curve to the given data. Analytical curves are often more well-behaving.

The fitting can be performed by calling the `SteelLibrary.create` method with the `'fit_analytical_BH', true` argument-pair, or manually by calling `SteelLibrary.generate_BH_langevin`.


