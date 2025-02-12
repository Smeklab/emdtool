---
title : SimpleExtrudedMesh
parent: API
grand_parent : Documentation
---
# Summary for: **SimpleExtrudedMesh**  < [MeshBase](MeshBase.html)

## Class summary

SimpleExtrudedMesh Simple extruded mesh.

Extrudes the given 2D mesh into 3 dimensions.

this = SimpleExtrudedMesh(msh2, zs) extrudes the mesh, with the layer
z-coordinates corresponding to 'zs'.

## Properties

### .SimpleExtrudedMesh/**msh_2D** is a property.

### .SimpleExtrudedMesh/**zs** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SimpleExtrudedMesh** Simple extruded mesh.

Extrudes the given 2D mesh into 3 dimensions.

this = SimpleExtrudedMesh(msh2, zs) extrudes the mesh, with the layer
z-coordinates corresponding to 'zs'.
Documentation for SimpleExtrudedMesh/SimpleExtrudedMesh
doc SimpleExtrudedMesh

### .**elements_in_layer** Indices to all elements in a given layer.

els = elements_in_layer(this, layer), where

* layer : the number of layer OR "mid" or "top" to plot the
ceil(number_of_layers/2)th or number_of_layers:th layer,
respectively.

### .**extrude_nodes**

els = extrude_nodes(msh3, nodes)

els = extrude_nodes(msh3, nodes, layers)

### .SimpleExtrudedMesh/**initialize** is a function.
initialize(this)

### .SimpleExtrudedMesh/**legacy_getMappingMatrix** is a function.


