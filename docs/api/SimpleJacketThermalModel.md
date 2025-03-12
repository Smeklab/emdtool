---
title : SimpleJacketThermalModel
parent: API
grand_parent : Documentation
---
# Summary for: **SimpleJacketThermalModel**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

SimpleJacketThermalModel Simple model for cooling jacket.

This class models lumped heat transfer from the boundary (normally
stator OD) to the coolant, considering the two thermal resistance
* surface to jacket, modelled by an equivalent interference gap
consisting of air
* jacket to coolant

For the latter, the dimensions of an individual cooling channel
within the jacket are first computed with this.get_channel_data. The
heat transfer coefficient from the channel wall to the coolant is
then computed from the Nusselt number, channel hydraulic diameter,
and the thermal conductivity of the coolant. Finally, as the thermal
model only sees heat transfer on the (cylindrical stator outer)
surface, this constant is multiplied by an appropriate factor to
obtain the correct net heat transfer.

For manually setting the net heat transfer coefficient, setting
this.heat_transfer_coefficient_total is sufficient.

## Properties

### .**Nusselt_number** Fudge factor.

### .**Reynolds_number** Not used right now.

### .**channel_aspect_factor** Channel width/heigth ratio

### .**channel_pitch** Ratio of sum of channel widths to stator periphery

### .SimpleJacketThermalModel/**connection** is a property.

### .**coolant_material** Coolant material object.

A [CoolantMaterialBase](CoolantMaterialBase.html) object. For now, properties are evaluated
at 20.

If string or char, the material is set to
`SimpleCoolantMaterial.create(this.coolant_material)` in
`this.initialize`.

### .**correction_coefficient** Not currently used.

### .**h_channel** Height of single cooling channel

### .SimpleJacketThermalModel/**heat_transfer_coefficient_jacket2coolant** is a property.

### .SimpleJacketThermalModel/**heat_transfer_coefficient_total** is a property.

### .SimpleJacketThermalModel/**heat_transfer_coefficient_yoke2jacket** is a property.

### .**helix_length_factor** Length factor.

The cooling channels are assumed helical. The net heat transfer
coefficient is multiplied by the length factor, to reduce the
behaviour into the 2D plane analysed.

### .**interference_gap_mm** Equivalent airgap between stator and jacket

### .SimpleJacketThermalModel/**magnetic_model** is a property.

### .SimpleJacketThermalModel/**radius** is a property.

### .SimpleJacketThermalModel/**thermal_model** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .frame to housing

### .flow in SI units

### .**get_channel_data** Get cooling channel spefications.

data = get_channel_data(this) returns a struct with the
following fields
* w_channel : width of single cooling channel
* h_channel : height of cooling channel
* A_channel : area of single channel
* periphery : periphery of single channel
* hydraulic_diameter : channel hydraulic diameter
* number_of_channels : approximate number of cooling
channels

### .SimpleJacketThermalModel/**initialize** is a function.
initialize(this)


