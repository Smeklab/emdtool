---
title : CoolingChannelModel
parent: API
grand_parent : Documentation
---
# Summary for: **CoolingChannelModel**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

CoolingChannelModel Convenience model for cooling channels.

The CoolingChannelModel is a composition of the `BoundaryConnection`
class, intended for modelling heat conduction from the FE domain into
a cooling channel, via a boundary. The connection is established
between the specified boundary and the ambient temperature node by
default.

By default, the model includes a thin layer of insulation on the
channel boundary, as well as the heat transfer coefficient from the
insulation surface into the coolant. The latter is computed from the
characteristic length (4 * this.channel_perimeter /
this.channel_area), coolant conductivity, and the Nusselt number. See
this.calculate_channel_wall_heat_transfer_coefficient for
implementation.

Alternatively, the net coefficient can be set manually by setting
`this.heat_transfer_coefficient_total`.

## Properties

### .CoolingChannelModel/**Nusselt_number** is a property.

### .CoolingChannelModel/**channel_area** is a property.

### .CoolingChannelModel/**channel_heat_transfer_coefficient** is a property.

### .CoolingChannelModel/**channel_perimeter** is a property.

### .CoolingChannelModel/**connection** is a property.

### .**coolant_material** Coolant material object.

A [CoolantMaterialBase](CoolantMaterialBase.html) object. For now, properties are evaluated
at 20.

If string or char, the material is set to
`SimpleCoolantMaterial.create(this.coolant_material)` in
`this.initialize`.

### .**correction_coefficient** Not currently used.

### .CoolingChannelModel/**edges** is a property.

### .CoolingChannelModel/**heat_transfer_coefficient_total** is a property.

### .CoolingChannelModel/**magnetic_model** is a property.

### .CoolingChannelModel/**surface_layer_thermal_conductivity** is a property.

### .CoolingChannelModel/**surface_layer_thickness** is a property.

### .CoolingChannelModel/**thermal_model** is a property.

### .CoolingChannelModel/**wall_heat_transfer_coefficient** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .CoolingChannelModel/**calculate_and_set_net_heat_transfer_coefficient** is a function.
calculate_and_set_net_heat_transfer_coefficient(this)

### .CoolingChannelModel/**calculate_channel_to_coolant_heat_transfer_coefficient** is a function.
calculate_channel_to_coolant_heat_transfer_coefficient(this)

### .CoolingChannelModel/**calculate_channel_wall_heat_transfer_coefficient** is a function.
calculate_channel_wall_heat_transfer_coefficient(this)

### .CoolingChannelModel/**initialize** is a function.
initialize(this)

### .CoolingChannelModel/**initialize_from_domain** is a function.
this = initialize_from_domain(this, thermal_model, component, domain_name)


