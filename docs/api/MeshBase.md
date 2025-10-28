---
title : MeshBase
parent: API
grand_parent : Documentation
---
# Summary for: **MeshBase**  < [MeshBaseInterface](MeshBaseInterface.html)

## Class summary

MeshBase methods:
MeshBase - is a class.
element_area_sum - Sum of element areas.
get_edge_incidence - Return edges and edge incidence array.s

## Properties

### .MeshBase/**Element** is a property.

### .element_type Is the element isoparametric or not.
Help for MeshBase/element_is_isoparametric is inherited from superclass MeshBaseInterface

### .**element_type** Element type
Help for MeshBase/element_type is inherited from superclass MeshBaseInterface

### .MeshBase/**elements** is a property.

### .MeshBase/**nodes** is a property.

### .**p** Nodal coordinates
Help for MeshBase/p is inherited from superclass MeshBaseInterface

### .**t** Element definitions
Help for MeshBase/t is inherited from superclass MeshBaseInterface


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


