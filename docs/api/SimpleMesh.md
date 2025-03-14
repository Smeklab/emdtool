---
title : SimpleMesh
parent: API
grand_parent : Documentation
---
# Summary for: **SimpleMesh**  < [MeshBase](MeshBase.html)

## Class summary

SimpleMesh Basic mesh class.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .SimpleMesh/**Bquiver** is a function.
[Bvec, h] = Bquiver(this, A, els, varargin)

### .**SimpleMesh** Basic mesh class.
Documentation for SimpleMesh/SimpleMesh
doc SimpleMesh

### .SimpleMesh/**elementCenters** is a function.
x0 = elementCenters(this, inds)

### .**infer_element_type** Automatically parse element type.

Automatically guess and set `this.Element` from the size of the element
definitions array.

### .SimpleMesh/**legacy_element_area_sum** is a function.
A = legacy_element_area_sum(this, elements)

### .msh_getMappingMatrix mapping matrix from reference to global element.

Call syntax
[F, F0] = msh_getMappingMatrix(msh, elements) for an affine mapping
x_global = F:x_local + F0

OR

[dF/dx_local, F] = msh_getMappingMatrix(msh, elements, x_local) for
isoparametric mappings:
x_global = F

(c) 2018 Antti Lehikoinen / Aalto University

### .**plot_edges** Visualize edges

plot_edges(this, edge_indices)

plot_edges(this, edge_definitions)

plot_edges(this, inds, [plot_args](plot_args.html))

### .**plot_nodes** Plot nodes.

plot_nodes(this, node_indices, varargin)

Plot the nodes 'node_indices' with *varargin*  passed to
plot.

### .SimpleMesh/**point2element** is a function.
elements = point2element(this, X)

### .SimpleMesh/**to_local_coordinates** is a function.
xloc = to_local_coordinates(this, x, els)

### .**triplot** Plot elements

triplot(this, element_indices, varargin)

Use element_indices = [] to plot all.


