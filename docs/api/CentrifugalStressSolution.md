---
title : CentrifugalStressSolution
parent: API
grand_parent : Documentation
---
# Summary for: **CentrifugalStressSolution**  < handle

## Class summary

CentrifugalStressSolution Solution of a centrifugal stress problem.

See e.g. `plot_displacements` and `plot_von_Mises_stress`.

## Properties

### .**problem** Associated [CentrifugalStressProblem](CentrifugalStressProblem.html).

### .**raw_solution** Raw solution array.

### .**rpm** Corresponding rpm.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**CentrifugalStressSolution** Solution of a centrifugal stress problem.

See e.g. `plot_displacements` and `plot_von_Mises_stress`.
Documentation for CentrifugalStressSolution/CentrifugalStressSolution
doc CentrifugalStressSolution

### .**get_displaced_mesh** Return displaced mesh.

msh = get_displaced_mesh(this, multiplier) returns a new mesh, based on
`this.problem.mesh` but with the nodes displaced by `this.raw_solution`
multiplied by the given multiplier.

### .**get_elementwise_von_Mises_stress** Elementwise von Mises stress.

sigma_el = get_elementwise_von_Mises_stress(this) returns an array of
elementwise von Mises stresses.

### .CentrifugalStressSolution/**get_nodal_stress_component** is a function.
sigma_el = get_nodal_stress_component(this, ind)

### .CentrifugalStressSolution/**get_nodal_von_Mises_stress** is a function.
sigma_el = get_nodal_von_Mises_stress(this)

### .**plot_displacements** Plots the displaced mesh.

plot_displacements(this, multiplier) plots the geometry under centrifugal
stress displacements, multiplied by the given factor.

### .**plot_von_Mises_stress** Visualize the von Mises stresses.

plot_von_Mises_stress(this) plots the elementwise von Mises stresses,
using the non-displaced geometry.

plot_von_Mises_stress(this, 'displacement_multiplier', multiplier) also
distorts the geometry according to the computed displacements, multiplied
by the given factor.

Additional key-value arguments:
* plot_style : 'average' plot von Mises stress at element center /
'nodal' prettier plotting.


