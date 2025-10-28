---
title : BoundaryConnection
parent: API
grand_parent : Documentation
---
# Summary for: **BoundaryConnection**  < [ThermalNetworkConnection](ThermalNetworkConnection.html)

## Class summary

BoundaryConnection Basic heat transfer boundary.

The BoundaryConnection class defines a typical heat-transfer
boundary, with the heat flux exiting (or entering) the FEA part of
the thermal problem proportional to the temperature difference
between the boundary and the associated `ThermalNode`, by the heat
transfer coefficient.

## Properties

### .**correction_coefficient** Correction for heat transfer coefficient.

### .**edges** Edges defining the boundary.

Can be either indices to the `.edges` property of the mesh of the
`ThermalModel`, or a 2xN array defining the edges as pairs of
nodal indices.

### .**edges_used** List of edges active on the boundary.

Only edges between 2 free nodes are used. ('Free' being the
opposite of fixed-temperature or non-solved nodes, the latter
normally found inside non-conductive regions.) Mainly used for
sanity checking.

### .**has_node2FEA** Does this define a node-to-FEA connection.
Help for BoundaryConnection/has_node2FEA is inherited from superclass ThermalNetworkConnection

### .**has_node2node** Does this define a node-to-node connection.
Help for BoundaryConnection/has_node2node is inherited from superclass ThermalNetworkConnection

### .**heat_transfer_coefficient** Heat transfer coefficient for the
boundary.

### .BoundaryConnection/**matrices** is a property.

### .**node** Associated 'ThermalNode'

### .**normalize_length** Normalize length to model

If true (Default), the (solved) heat flux of the connection is
per unit model length, as is any heat source of the associated
[ThermalNode](ThermalNode.html). If false, the fluxes and heat sources are absolute
values per symmetry sector.

### .BoundaryConnection/**skip_edge_sanitation** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**BoundaryConnection** Constructor.

this = BoundaryConnection(node) creates the connection and
adds it to the node.
Documentation for BoundaryConnection/BoundaryConnection
doc BoundaryConnection

### .**get_flux** Fluxes through the connection.

Returns the heat flux density as well as the total flux
across all the symmetry sectors and over the effective length
of the problem.


