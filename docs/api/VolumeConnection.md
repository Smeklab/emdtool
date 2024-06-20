---
title : VolumeConnection
parent: API
grand_parent : Documentation
---
# Summary for: **VolumeConnection**  < [ThermalNetworkConnection](ThermalNetworkConnection.html)

## Class summary

VolumeConnection Connection between heat generation and external nodes.

The VolumeConnection class establishes a connection between
volumetric heat generation and external `ThermalNodes`. It is mainly
intended for modelling out-of-plane heat flux of 2D problems. See the
`initialize` method documentation for some discussion on the
mathematics.

A VolumeConnection must be constructed manually, by first creating
the object, creating the associated thermal nodes and adding them to
the thermal model, and setting all the required properties, for
example:
´ambient = AmbientNode();´
´ave_node = ThermalNode('average');´
´model.add_node(ambient, ave_node);´
´conn = VolumeConnection();´
´conn.volume_average_node = ave_node;´
´conn.actual_node = ambient;´
´conn.out_of_volume_bulk_thermal_conductivity = 10;´
´conn.volume_height = 1;´
´conn.elements = array_of_indices;´
´conn.initialize;´

## Properties

### .**actual_node** The actual that is connected to the FE-problem.

### .**elements** Indices to the finite elements in this connection.

### .**has_node2FEA** Does this define a node-to-FEA connection.
Help for VolumeConnection/has_node2FEA is inherited from superclass ThermalNetworkConnection

### .**has_node2node** Does this define a node-to-node connection.
Help for VolumeConnection/has_node2node is inherited from superclass ThermalNetworkConnection

### .VolumeConnection/**matrices** is a property.

### .**out_of_volume_bulk_thermal_conductivity** Thermal conductivity in
the out-of-plane direction.

### .**two_sided** Is the connection two-sided?

Consider a cooling problem with an effective length of 1 meters,
centered at z = 0. A 'one-sided' connection would mean that the
problem domain is only cooled from the positive side, while a
two-sided connection means we have heat flux also towards the
negative side. A two-sided connection is assumed to be **** four**
(4) times more efficient, as the length of the cooling path is
halved **** and** each half of the cooling path only needs to carry
half of the heat flux compared to the single-sided case.

### .**volume_average_node** Auxiliary thermal node.

An auxiliary thermal node for corresponding to the average
temperature of the FE volume.

### .**volume_height** Out-of-plane height of the problem or connection.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**initialize** Initialize the connection.

Initializes the problem matrices etc.

A VolumeConnection is modelled according to the following principles and
assumptions:
* The heat flux between the FEA volume and the external node is equal
to the temperature difference dT divided by the out-of-volume thermal
resistance.
* The temperature difference is equal to the difference between the
node temperature and the **** average** temperature across `this.elements`
* For one-sided connections, the out-of-volume thermal resistance is equal
the volume height divided by 2 (to account for the average path
length), divided by the out of volume thermal conductivity times the
combined area of `this.elements`
* For two-sided connection, this value is again divided by four (4)
to account for the halved heat path length **** and** the halved flux
part half-path
* The heat flux out of or into the FE model is realized as a uniform
heat generation density across `this.elements`, equal to the total flux
divided by the combined area of `this.elements` and the volume height.


