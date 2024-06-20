---
title : ThermalNode
parent: API
grand_parent : Documentation
---
# Summary for: **ThermalNode**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

ThermalNode General class for textbook thermal node.

## Properties

### .**connections** Connections joining this node.

An array of `ThermalNetworkConnection` objects.

### .**heat_capacity** Heat capacity of node.

### .**heat_source** Heat source or sink.

### .**id** Node id.

Set automatically by the model.

### .**name** Node name.

### .**parent_model** Parent `ThermalModel`


## Methods

Class methods are listed below. Inherited methods are not included.

### .**ThermalNode** General class for textbook thermal node.
Documentation for ThermalNode/ThermalNode
doc ThermalNode

### .**add_connection** Add connection to the node.

add_connection(this, conn)

### .matrices Get matrices associated with this node.

matrices = get_matrices(this) returns a structure with the following
fields, each corresponding to the contribution of this node only to the
global problem matrices
* S_FEA : pure-FEA part (Np x Np)
* S_FEA2node : contribution from node into the FEA part (Np x Nn)
* S_node2FEA : same to the opposite direction (Nn x Np)
* S_node : pure lumped part (Nn x Nn)
* M_node : pure lumped part, capacitance (Nn x Nn)
* P_node : heat generation/sink (Nn x 1)

In the above, Np is the number of FEA nodes while Nn is the number of
lumped nodes.

Each of the above matrices contains the contribution of all the
connections that join this node, but at the same time only the
contribution of this node. In other words, the final thermal problem
matrices are obtained by summing the matrices returned by all the nodes
together, and adding them to the pure FEA part.

### .**get_temperature** Node temperature.

T = get_temperature(this, solution) where
* solution : a `ThermalSolution` object.

### .**set_global_heat_source** Set global heat source.

set_global_heat_source(this, P) sets the *global*  heat source
/ sink equal to `P` Watts. The node source `.heat_source` is then
set to `P`
divided by the effective length and number of symmetry
sectors, to render the value to the z-infinite problem frame
of reference.


