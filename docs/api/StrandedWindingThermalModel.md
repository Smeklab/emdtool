---
title : StrandedWindingThermalModel
parent: API
grand_parent : Documentation
---
# Summary for: **StrandedWindingThermalModel**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

StrandedWindingThermalModel Class for stranded windings.

Models the winding with a homogenized bulk conductivity, with the
end-windings modelled as a lumped node with a `VolumeConnection`
between it and the FE domain. By default, the end windings are cooled
entirely via conduction into the active part.

NOTE: changing one or more of the properties requires re-calling
this.initialize for the changes to take effect in the thermal mode.

Before solving the model, set the correct losses with
`this.calculate_and_set_losses`.

**** WARNING** Only works for the default phase winding for now.

## Properties

### .**circuit** Associated `PolyphaseCircuit`.

### .**conductor_thermal_conductivity** Conductor material thermal conductivity

### .StrandedWindingThermalModel/**connection** is a property.

### .**connection_to_ambient** Connection to ambient, if any.

### .**correction_coefficient** Not currently used.

### .StrandedWindingThermalModel/**end_winding_model** is a property.

### .**end_winding_node** End-winding node.

Node for average end-winding temperature.

### .**homogenized_conductivity** Homogenized winding conductivity.

Computed automatically with `this.compute_homogenized_conductivity`
unless manually set by the user.

### .**insulation_thermal_conductivity** Thermal conductivity of insulation

### .**loss_build_factor** Multiplier to be used on losses.

This factor is used as a multiplier on the losses extracted from
the results summary structure, from the [circuit_name]_loss_data
sub-structure.

### .**thermal_model** Associated thermal model.

### .**winding_average_node** Node for winding average temperature.

Middle of stack, average over the 2D domain.

### .**winding_boundary_node** Boundary node.

Node for the average winding temperature at the edge of the
stack.

### .**winding_maximum_node** Maximum temperature, active part only.

### .**winding_overall_average_node** Overall average.

Weighted average node for the 2D average and end-winding average,
weighted with the active length and end-winding length
respectively.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**StrandedWindingThermalModel** Constructor.

this = StrandedWindingThermalModel(thermal_model, circuit),
where
* thermal_model : the `ThermalModel` object
* circuit : associated `PolyphaseCircuit` object.
Documentation for StrandedWindingThermalModel/StrandedWindingThermalModel
doc StrandedWindingThermalModel

### .**add_flooded_end_winding_cooling** Add flooded end-winding cooling.

Adds a strong thermal connection between `this.end_winding_node` and
`this.thermal_model.ambient_node`.

### .**calculate_and_set_losses** Parse losses from data.

calculate_and_set_losses(this, loss_data) where `loss_data` is a
structure returned by motor.results_summary.

**** WARNING** Only works for phase windings for now.

### .**compute_homogenized_conductivity** Compute bulk conductivity in-plane.

### .StrandedWindingThermalModel/**initialize** is a function.
initialize(this)

### .StrandedWindingThermalModel/**set_average_node** is a function.
set_average_node(this)

### .StrandedWindingThermalModel/**set_end_winding_model** is a function.
set_end_winding_model(this)

### .StrandedWindingThermalModel/**set_thermal_conductivity** is a function.
set_thermal_conductivity(this)


