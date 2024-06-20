---
title : Node2NodeConnection
parent: API
grand_parent : Documentation
---
# Summary for: **Node2NodeConnection**  < [ThermalNetworkConnection](ThermalNetworkConnection.html)

## Class summary

Node2NodeConnection Textbook connection between two nodes.

The Node2NodeConnection class realizes the textbook lumped thermal
network connection between two nodes.

## Properties

### .**R** Thermal resistance.

### .**has_node2FEA** Does this define a node-to-FEA connection.
Help for Node2NodeConnection/has_node2FEA is inherited from superclass ThermalNetworkConnection

### .**has_node2node** Does this define a node-to-node connection.
Help for Node2NodeConnection/has_node2node is inherited from superclass ThermalNetworkConnection

### .**node1** First node.

### .**node2** Second node.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Node2NodeConnection** Constructor.

this = Node2NodeConnection(node1, node2)
Documentation for Node2NodeConnection/Node2NodeConnection
doc Node2NodeConnection

### .**get_flux** Flux through the connection.

Returns the net flux over all the symmetry sectors.


