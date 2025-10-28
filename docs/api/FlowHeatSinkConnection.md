---
title : FlowHeatSinkConnection
parent: API
grand_parent : Documentation
---
# Summary for: **FlowHeatSinkConnection**  < [Node2NodeConnection](Node2NodeConnection.html)

## Class summary

FlowHeatSinkConnection Coolant flow acting as a heat sink.

The FlowHeatSinkConnection class is intended to model heat rejection
into a coolant, with the coolant temperature rise equal to
`heat_flow ** this.coolant_mass_flow **  this.coolant_specific_heat`,
where the temperature rise is equal to the temperature difference
between `this.node1` and `this.node2`.

Please note that this model is very simple, and e.g. differing
coolant temperatures in different parts of the coolant circuit are
not modelled, unless multiple FlowHeatSinkConnections are used.

Also note that the model behaves in a fashion that may be counter-intuitive
to some. Let us use an axial flow in the airgap as an example, with the
average fluid temperature in the airgap modelled by a single [ThermalNode](ThermalNode.html).
In this case, a FlowHeatSinkConnection would be set up between the airgap
node and a node representing the *inflow*  temperature of the coolant.
Furthermore, the temperature of the airgap node would then also equal
the coolant temperature on the outflow side. Finally, the direction
of the heat flow in the FlowHeatSinkConnection would obviously be
from the airgap node to the inflow node - i.e. opposite to the fluid
velocity and actual direction of energy transfer.

## Properties

### .FlowHeatSinkConnection/**coolant_mass_flow** is a property.

### .FlowHeatSinkConnection/**coolant_specific_heat** is a property.

### .**model_average_temprise** Use average-temprise model.

Use average temperature difference between the inlet and outlet
sides


## Methods

Class methods are listed below. Inherited methods are not included.

### .FlowHeatSinkConnection/**compute_resistance** is a function.
R = compute_resistance(this)

### .FlowHeatSinkConnection/**compute_resistance_for_2Dmodel** is a function.
compute_resistance_for_2Dmodel(this)


