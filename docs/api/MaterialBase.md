---
title : MaterialBase
parent: API
grand_parent : Documentation
---
## Summary for MaterialBase
MaterialBase Base class for materials.

Not really used right now, see [Material](Material.html).
## PROPERTIES
* B - given B-curve (T)

* H - given H-curve (A/m)

* Poissons_ratio Poisson's ratio.

Fetched from this.material_properties.Poissons_ratio.

* Youngs_modulus Young's modulus in SI units.

Fetched from this.material_properties.Youngs_modulus

* density Density in SI units.

Fetched from this.material_properties.rho

* domains - list of **domains** that are made of this material

* electrical conductivity in SI units.

Fetched from this.material_properties.sigma

At 20 C by default.

* elements - indices to finite elements

* intrinsic_coercivity Intrinsic coercivity.

The intrinsic coercivity, often (a bit naiively) used as a
demagnetization limit. (A/m). Fetched from
this.material_properties.HcJ

At 20C by default.

* intrinsic_coercivity_temperature_coefficient Temperature
coefficient for intrinsic coercivity.

Fetched from this.material_properties.intrinsic_coercivity_temperature_coefficient

* iron_loss_computation_method Iron loss computation method.

This property allows an option to toggle the iron loss
computation method. Indeed, the `loss_density`  method of the
[Material](Material.html) class calls the method with its name equal to this
property.

However, subclasses may have a different `loss_density`  method.

* is_symmetric - Is the differential reluctivity symmetric?

* MaterialBase/material_properties is a property.

* plot_args - plotting instructions for this

* relative_permeability Relative permeability.

Only used for PMs by default. Fetched from
this.material_properties.mur.

* remanence_flux_density Remanence flux density in T.

Fetched from this.material_properties.Br

At 20C by default.

* remanence_temperature_coefficient Remanence flux density temp.
coeff. in 1/C.

Fetched from this.material_properties.alpha_Br

* specific_heat_capacity Specific heat capacity in SI units.

Fetched from this.material_properties.specific_heat_capacity

* temperature_coefficient_of_resistivity Resistivity temp. coeff. in
SI units.

Fetched from this.material_properties.alpha_sigma

* thermal_conductivity Thermal conductivity in SI units.

Fetched from this.material_properties.thermal_conductivity

## Methods
Class methods are listed below. Inherited methods are not included.
### * MaterialBase Base class for materials.

Not really used right now, see [Material](Material.html).
Documentation for MaterialBase/MaterialBase
doc MaterialBase

### * MaterialBase/detach is a function.
obj = MaterialBase

### * MaterialBase/differential_reluctivity is a function.
obj = MaterialBase

### * electrical_conductivity_at_temperature Electrical conductivity
at given temperature.

sigma = electrical_conductivity_at_temperature(this, T)
returns the electrical conductivity `sigma`  (S/m) at the
given temperature `T`  (C)

### * get_B_data Compute flux density waveforms and other data.

Bdata = get_B_data(solution, args)

Bdata is an array of structs with the fields (one struct per quadrature
point)

* solution : handle to the [MagneticsSolution](MagneticsSolution.html) used

* timestamps : time-step timestamps in seconds

** volume_multiplier : model.dimensions.leff **  model.symmetrySectors

* DETF : absolute value of mesh mapping matrix determinant at quad point

* Bx : waveform of x-component of flux density at quad point

* By : waveform of y-component of flux density at quad point

### * MaterialBase/init_for_problem is a function.
obj = MaterialBase

### * intrinsic_coercivity_at_temperature Intrinsic coercivity at
given temperature.

HcJ = intrinsic_coercivity_at_temperature(this, T) returns
the intrinsic coercivity `HcJ` (A/m) at the given temperature
`T` (C).

### * loss_density Iron/material loss density method.

[p_hysteresis, p_eddy, p_excess] = loss_density(this, Bdata), where

* Bdata : flux density waveform data returned by `get_B_data` .

Return values:

* Elementwise hysteresis, eddy, and exces loss densities,
expressed in W/m^3.

### * losses Material-level loss computation.

[Ptot, Pdata] = losses(solution) or

[Ptot, Pdata] = losses(solution, key, value, ...) (see below)

return the total material (usually iron)
losses Ptot for [MagneticsSolution](MagneticsSolution.html) solution.

Pdata is then a struct with the following fields:

Return values: total **losses** (time-average) and a loss data struct with
the following fields:

* P_total : average total losses

* P_total_time : total **losses** versus time (solution.ts)

* P_hysteresis : total hysteresis losses

* P_eddy : total eddy-current iron losses

* P_excess : total excess losses.

* P_rotor : total **losses** in rotor (in elements motor.rotel)

* P_hysteresis_rotor : total hysteresis **losses** in rotor

* P_eddy_rotor

* p_hysteresis_elementwise : vector of elementwise hysteresis loss
density (W/m^3)

* p_eddy_elementwise

* p_excess_elementwise

WARNING: element-wise loss densities are returned in W/m^3, as opposed to
the W/kg used in previous versions.

The **losses** are computed by first computing the flux density waveforms
with MaterialBase.get_B_data, and then passing the results to
the `.loss_density`  method of each  [Material](Material.html) in the solution, to get the
elementwise loss densities. The **losses** are then summed and  the
other interesting outputs computed.

Keyword arguments:

* plotting_on : plot results (default false). Losses are plotted with
MaterialBase.plot_losses

* remove_DC : Remove DC-component of flux density before computing
losses? Options: false - no removal / 'rotor' - only remove from rotor
elements (motor.rotel) / 'all' remove from all elements.

* use_entire_solution : use entire solution range (in time-domain).
Default: false: only last full electrical period is used.

* method : This value is temporarily set as the
`iron_loss_computation_method`  property of each [Material](Material.html). For the plain
[Material](Material.html) class, the options are
"iron_loss_density_time_domain_Steinmetz" and
"iron_loss_density_frequency_domain_Bertotti". Subclasses may ignore
this. Default : [] --> don't change the property value.

### * MaterialBase/plot_BH is a function.
obj = MaterialBase

### * MaterialBase.plot_losses is a function.
MaterialBase.plot_losses(solution, Pdata, varargin)

### * MaterialBase/raw_reluctivity is a function.
obj = MaterialBase

### * remanence_flux_density_at_temperature Remanence flux density
at given temperature.

Br = remanence_flux_density_at_temperature(this, T) returns
the remanence flux density (T) at a the given temperature
`T` (C).

