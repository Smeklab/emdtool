---
title : ThermalNetworkConnection
parent: API
grand_parent : Documentation
---
# Summary for: **ThermalNetworkConnection**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

ThermalNetworkConnection Abstract base class for connections.

The ThermalNetworkConnection defines the concept of a 'connection' in
a thermal network. A connection can be established between a `ThermalNode`
and the FEA part of a `ThermalModel`, or between two nodes.

## Properties

### .**has_node2FEA** Does this define a node-to-FEA connection.

### .**has_node2node** Does this define a node-to-node connection.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**ThermalNetworkConnection** Abstract base class for connections.

The **ThermalNetworkConnection** defines the concept of a 'connection' in
a thermal network. A connection can be established between a `ThermalNode`
and the FEA part of a `ThermalModel`, or between two nodes.
Documentation for ThermalNetworkConnection/ThermalNetworkConnection
doc ThermalNetworkConnection

### .**get_flux** Get flux data.

data = get_flux(this, solution) returns free-format data of
the thermal flux through the connection, and the given
`ThermalSolution`.

The output data struct should contain
* Total flux per entire model, including the effects of the
number of symmetry sectors and effective length
* Name / information of the entire from which the flux is
flowing (negative flux indicating opposite direction)
* The same for where to the flux is flowing to

### .**get_node2FEA_matrices** Return the thermal matrices.

[S_FEA, S_FEA2node, S_node2FEA, S_node] =
get_node2FEA_matrices(this, node) return the contribution
of this connection and the given `ThermalNode` `node` to
the thermal problem matrices:
* S_FEA : the resistivity matrix of the pure-FEA part of
the problem
* S_FEA2node : coupling matrix between the FEA and lumped
parts of the model, FEA-rows.
* S_node2FEA : coupling matrix between the FEA and lumped
parts of the model, lumped-rows.
* S_node : resistivity matrix of the pure-lumped part of
the model.

### .**get_node2node_row** Row of the thermal resistance matrix.

vals = get_node2node_row(this, node) returns the values in
the thermal resistance matrix, on the row corresponding to
the `ThermalNode` `node` given as input.

### .**get_nodes** Return indices to the nodes associated with this.

inds = get_nodes(this, node)

### .**get_saveable_struct** Get saveable data struct.

Defaults to this.get_flux


