---
title : CentrifugalStressProblem
parent: API
grand_parent : Documentation
---
# Summary for: **CentrifugalStressProblem**  < handle

## Class summary

CentrifugalStressProblem Class for simple centrifugal stress problems.

`this = CentrifugalStressProblem(geometry)` creates a problem for the
given `geometry`. If the geometry is a `MotorModelBase` subclass, its
first `.rotor` component is selected as the geometry instead. The
geometry is passed to `this.initialize`, see documentation for
details.

this = CentrifugalStressProblem() initializes an empty problem
instead.

The problem can then be solved using the `.solve` method.

## Properties

### .CentrifugalStressProblem/**geometry** is a property.

### .CentrifugalStressProblem/**matrices** is a property.

### .CentrifugalStressProblem/**mesh** is a property.

### .CentrifugalStressProblem/**shell_domains** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**assemble_boundary_matrices** Assemble boundary matrices.

assemble_boundary_matrices(this) assembles the boundary matrix for
handling the periodic and Dirichlet boundary conditions. For now,
Dirichlet nodes of the magnetic problem are set as zero-displacement
nodes.

The result is saved to this.matrices.P.

### .**assemble_load_vector** Assembles the centrifugal stress load vector.

assemble_load_vector(this) assembles the centrifugal stress load vector,
for a **** unit** angular velocity.

### .**assemble_stiffness_matrices** Assemble stiffness matrices.

assemble_stiffness_matrices(this) parses the material properties and
assembles the stiffness matrices. The results are saved to this.matrices.

### .**initialize** Initialize problem.

initialize(this, geometry) initializes the problem. If `geometry` is a
subclass of `MotorModelBase`, `geometry.rotor(1)` is set as
`this.geometry`. Otherwise, the given geometry is set.

Next, `this.mesh` is set to `MechMesh(this.geometry)`.

Finally, the following methods are called:
* parse_shell_edges
* assemble_stiffness_matrices
* assemble_boundary_matrices
* assemble_load_vector

### .**parse_shell_edges** Parse shell edges

parse_shell_edges(this) tries to parse shell edges. In this context,
*shell edges*  are with duplicate nodes on their left and right sides,
with empty space between. They are mainly intended for modelling thin
gaps with no mechanical contact, or contact modelled by special means.

By default, named edges of `this.geometry` by the name 'shell' are then
shellified. First, `ShellEdge` objects are created using `MechUtil.get_shell_edges`.

Next, for each object `se`, the `get_left_and_right_elements` is called. The
returned 'left' elements are then set as `se.elements_to_shellify`.
Additionally, `se.skip_ends` is set to `true`. Finally, `se.shellify` is
called.

### .**solve** Solve centrifugal stress problem.

solution = solve(rpm) solves the problem at given rpm.

solution = solve(results) instead uses `results.rpm` as the rpm.

A [CentrifugalStressSolution](CentrifugalStressSolution.html) is returned.


