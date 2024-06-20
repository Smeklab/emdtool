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
not modelled.

## Properties

### .FlowHeatSinkConnection/**coolant_mass_flow** is a property.

### .FlowHeatSinkConnection/**coolant_specific_heat** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .FlowHeatSinkConnection/**compute_resistance** is a function.
R = compute_resistance(this)

### .FlowHeatSinkConnection/**compute_resistance_for_2Dmodel** is a function.
compute_resistance_for_2Dmodel(this)


