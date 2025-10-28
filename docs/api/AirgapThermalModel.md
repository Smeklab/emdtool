---
title : AirgapThermalModel
parent: API
grand_parent : Documentation
---
# Summary for: **AirgapThermalModel**  < [ThermalModelElement](ThermalModelElement.html)

## Class summary

AirgapThermalModel Simple model for airgap heat transfer.

Adds a node to the parent model, corresponding to the airgap
temperature.

The heat transfer coefficient is calculated assuming cylindrical
stator and rotor surfaces. In case the 'active' area facing the
airgap is smaller than that of a cylinder (example: stator slot
openings modelled as non-conductive, resulting in heat transfer from
the tooth-tip area only), the heat transfer coefficient on the
corresponding side (stator/rotor) is increased to compensate by
`this.length_factor_static` and/or `this.length_factor_moving`.

Windage losses are estimated with `this.estimate_windage_losses` and
lumped to `this.node`.

The associated [BoundaryConnection](BoundaryConnection.html) objects deal with absolute
heat fluxes per symmetry sector.

## Properties

### .**boundary_length_moving** Computed length of moving boundary.

### .**boundary_length_static** Computed length of static boundary.

### .**connection_moving** Node-FEA connection.

A [BoundaryConnection](BoundaryConnection.html) object linking the airgap node to
the airgap-facing edges of the FEA model, moving component
of `this.gap`.

### .**connection_static** Node-FEA connection.

A [BoundaryConnection](BoundaryConnection.html) object linking the airgap node to
the airgap-facing edges of the FEA model, static component
of `this.gap`.

### .**coolant_material** Coolant material object.

A [CoolantMaterialBase](CoolantMaterialBase.html) object. For now, properties are evaluated
at 20.

If string or char, the material is set to
`SimpleCoolantMaterial.create(this.coolant_material)` in
`this.initialize`.

### .**correction_coefficient** Correction coefficient for heat tranfer
coeff.

### .**gap** Parent [SlidingAirgapBase](SlidingAirgapBase.html) object.

### .AirgapThermalModel/**length_factor_moving** is a property.

### .AirgapThermalModel/**length_factor_static** is a property.

### .**magnetic_model** Parent [MotorModelBase](MotorModelBase.html) object.

### .**n_moving** Moving-side FEA nodes.

### .**n_static** Static-side FEA nodes.

### .**node** Node corresponding to airgap temperature.

### .**surface_roughness** Surface roughness.

Used in windage loss ccomputation.

### .**thermal_model** Parent thermal model.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**calculate_and_set_heat_transfer_coefficient** Calculate and/or set h.

calculate_and_set_heat_transfer_coefficient(this, arg) is equivalent to
calling
h = calculate_heat_transfer_coefficient(this, arg);
this.heat_transfer_coefficient = h;
this.set_heat_transfer_coefficient(h);

### .**calculate_heat_transfer_coefficient** Calculate heat transfer coefficient.

h = calculate_heat_transfer_coefficient(this, summary) calculates the
heat transfer coefficient from the gap dimensions (properties of `this`)
and summary.rpm.

h = calculate_heat_transfer_coefficient(this, h), where h is numeric, is
a convenience syntax returning the given value.

### .**estimate_windage_losses** Estimate windage losses in the airgap.

P = estimate_windage_losses(this, summary)

Estimate windage losses according to Saari (1995).

The results are directly proportional to `this.roughness`, so setting the
value to 0 will return zero losses.

### .AirgapThermalModel/**initialize** is a function.
initialize(this)

### .**recompute** Compute heat transfer coeff and windage.

Computes and sets the heat transfer coefficient with
this.calculate_and_set_heat_transfer_coefficient, and
computes the windage losses with this.estimate_windage_losses
and adds them to `this.node.heat_source`, diided by the
number of symmetry sectors.

### .AirgapThermalModel/**recompute_radiative_heat_transfer_coefficient** is a function.
recompute_radiative_heat_transfer_coefficient(this, thermal_solution, varargin)

### .**set_heat_transfer_coefficient** Set heat transfer coefficient.

set_heat_transfer_coefficient(this, h) sets the heat transfer coefficient
`h` to the inner and outer surfaces.

**** NOTE** the coefficient is defined as the heat transfer coefficient from
*one of the surfaces*  into the gap air, not the overall
surface-to-surface coefficient.

Furthermore, the value is expected to refer to solid cylindrical
surfaces. This is adjusted to account for differences in the size of the
actual boundary, such as only the stator tooth tip included in the actual
boundary connection (in which case
`this.connection_static.heat_transfer_coefficient` will be larger than
`h`).


