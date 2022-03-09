---
title : Mesh
parent: API
grand_parent : Documentation
---
## Summary for Mesh
Mesh Class for mesh objects.

Has the following properties:
p = nodal coordinates as a 2xNp array
t = elements as a 3xNe array
edges = ordered edges as a 2xNedges array, with edges(1,k)<edges(2,k)
t2e = 3xNe incidence array: listing the 3 edges belonging to each element
e2t = 2xNedges incidence array: from edges to elements. Second is zero for boundary edges

(c) 2017 Antti Lehikoinen / Aalto University
## PROPERTIES
* Mesh/e2t is a property.

* Mesh/edges is a property.

* Mesh/elements is a property.

* Mesh/nodes is a property.

* Mesh/t2e is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * finalize Set edge incidence, infer element type.

### * get_outer_edges Get edges surrounding elements.

edge_indices = get_outer_edges(this, elements)

Given a list (1xN) of `elements`, the function returns the indices to
edges `edge_indices` surrounding the elements (outer boundary only)

