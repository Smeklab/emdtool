---
title : MeshBase
parent: API
grand_parent : Documentation
---
# Summary for: **MeshBase**  < handle

## Class summary

MeshBase methods:
MeshBase - is a class.
element_area_sum - Sum of element areas.
get_edge_incidence - Return edges and edge incidence array.s

## Properties

### .MeshBase/**Element** is a property.

### .MeshBase/**element_type** is a property.

### .MeshBase/**elements** is a property.

### .MeshBase/**nodes** is a property.

### .MeshBase/**p** is a property.

### .MeshBase/**t** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**MeshBase**/MeshBase is a constructor.
obj = MeshBase
Documentation for MeshBase/MeshBase
doc MeshBase

### .**element_area_sum** Sum of element areas.

[Atot, Ael] = element_area_sum(this, elements) returns the total
area/volume of the given elements, as well as the elementwise
area/volume.

Note that 'volume' refers to the integral of 1 over the element
definition, i.e. indeed means the surface area for 2D meshes. Please
multiply by the effective length if necessary.

Use `elements = []` to integrate over all the elements.

### .**getMappingMatrix** Get mapping matrix.

See ElementBase.get_mapping_matrix

### .**get_assembly_parameters** Get parameters for mesh assemble.

[x_quad, w_quad, Nrows, Ncols, N_test, N_shape] = ...
get_assembly_parameters(this, fun_test, fun_shape)

[x_quad, w_quad, Nrows, Ncols, N_test, N_shape] = ...
get_assembly_parameters(this, fun_test, fun_shape, nonlinearity_order)

### .**get_edge_incidence** Return edges and edge incidence array.s

[edges, e2t, t2e] = get_edge_incidence(this) returns the following
arrays:
* edges : size(this.Element.edge_definitions,2) x number_of_edges, with all(edges(1,:)<edges(2,:))
* e2t : 2 x number_of_edges, edges-to-elements incidence. Zeros on the
second row for boundary edges.
* t2e : size(this.Element.edge_definitions,1) x number_of_elements,
elements to edges incidence. Edges directionally defined according to
this.Element.edge_definitions; negative values indicate edges (as
defined by `edges`) oriented opposite to the element direction.


