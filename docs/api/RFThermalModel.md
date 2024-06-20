---
title : RFThermalModel
parent: API
grand_parent : Documentation
---
# Summary for: **RFThermalModel**  < [ThermalModel](ThermalModel.html)

## Class summary

RFThermalModel Simple thermal model for radial-flux machines.

The RFThermalModel.from_model(motor) static method sets up a thermal
model including
* StrandedWindingThermalModel for the stator winding
* SimpleJacketThermalModel on the stator yoke-side boundary
* AirgapThermalModel on the airgap

Apart from the stator end-windings, only in-plane heat fluxes are
modelled.

Build factors are included as follows:
* motor.build_factor_for_iron_losses is applied as a multiplier to
the elementwise iron losses
* motor.build_factor_for_winding_losses is applied to the
motor.stator(1).winding object only.

## Properties

### .RFThermalModel/**airgap_model** is a property.

### .RFThermalModel/**housing_model** is a property.

### .RFThermalModel/**magnetic_model** is a property.

### .RFThermalModel/**winding_model** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .RFThermalModel.**from_model** is a function.
this = RFThermalModel.from_model(motor, varargin)

### .RFThermalModel/**parse_loss_density** is a function.
parse_loss_density(this, summary)

### .RFThermalModel/**parse_thermal_conductivities** is a function.
this = parse_thermal_conductivities(this)

### .RFThermalModel/**set_magnetic_solution** is a function.
set_magnetic_solution(this, solution, summary)


