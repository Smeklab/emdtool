---
title : Material
parent: API
grand_parent : Documentation
---
# Summary for: **Material**  < [MaterialBase](MaterialBase.html)

## Class summary

Material Basic isotropic material class.

Materials are normally instantiated with the static methods

* `Material.create`

* `Material.from_specs`

## Properties

### .Material/**BH_extrapolation_method** is a property.

### .Material/**data** is a property.

### .**iron_loss_computation_method** Iron loss computation method.

This property allows an option to toggle the iron loss
computation method. Indeed, the `loss_density`  method of the
[Material](Material.html) class calls the method with its name equal to this
property.

However, subclasses may have a different `loss_density`  method.
Help for Material/iron_loss_computation_method is inherited from superclass MaterialBase


## Methods

Class methods are listed below. Inherited methods are not included.

### .harmonic-approximation BH-curve (eq. (47) in Arkkio's thesis)

### .Material/**add_domain** is a function.
this = add_domain(this, domain)

### .**clear_copy** New independent copy of the material.

m = clear_copy(this) creates a new deep copy of the material.

Important information for subclassing: The returned object `m` is a new
object of the same class as `this`, initialized without input arguments.
Then, the following properties are copied:
* B
* H
* plot_args
* data
* material_properties
* matid
* name
* BH_extrapolation_method
Note  that no specific copy methods are utilized for any of these, so if any of
these properties is a handle object for some incomprehensible reason, the
returned object will contain a reference to the original object's
property.

### .**create** Create material

mat = Material.create(material_object)

Return a clear_copy of material_object.

mat = Material.create(matid)

Create a material from library, see get_defaultMaterial

mat = Material.create()

Create an empty Material object.

### .**detach** Clear elements, domains, etc.

### .**differential_reluctivity** Return reluctivity and its derivative.

[nu, dnu] = differential_reluctivity(this, Bvector, true)

Return reluctivity and its derivative w.r.t. `B` ^2 computed with the
harmonic approximation

[H, dHdB] = differential_reluctivity(this, Bvector)

Return magnetic field strength vector and the differential reluctivity
tensor. Only works in 2D.

### .extrapolate_BH_langevin Extrapolate BH data with constant magnetization.

[Bext, Hext] = extrapolate_BH_langevin(B, H) extrapolate given BH data by
assuming a constant magnetization beyond the given range.

Returns original BH data appended by extrapolated data.

### .**extrapolate_BH_data** Extrapolate given BH data.

[Bext, Hext]  = extrapolate_BH_data(this, B, H) extrapolate BH data with
the method specified in this.BH_extrapolation_method:

* 'langevin' : fitting a single Langevin function to the data, using
Material.extrapolate_BH_langevin

* 'constant' : extrapolate using constant magnetization equal to the
last datapoint in the given BH data. Uses Material.extrapolate_BH_constant

* 'linear' : linear extrapolation of BH curve. Uses Material.extrapolate_BH_linear

* for other approaches, please subclass Material.

Returns original BH data appended by extrapolated data.

### .**extrapolate_BH_langevin** Extrapolate BH data with Langevin approach.

[Bext, Hext] = extrapolate_BH_langevin(B, H) extrapolate given BH data by
fitting the single-valued Langevin function to the data; specifically by
matching the value and slope at the end of the given BH curve.

Returns original BH data appended by extrapolated data.

### .**extrapolate_BH_linear** Extrapolate BH data with linear extrapolation.


Returns original BH data appended by extrapolated data.

### .**fit_Langevin1** Process BH data with Langevin approach.

fit_Langevin1(this)

Process given BH data (this.B, this.H). Given data range is used as
such. Extrapolation to higher flux densities is performed by fitting
the single Langevin function to the data, and using it for
extrapolation.

fit_Langevin1(this, 'monotonicity_factor', c)

Additional improve the reluctivity-monotonicity of the given data with
the following approach:

1. Compute nu = H / B

2. Make nu monotonic.

3. Compute H_monotonic = nu * B

4. Replace H := (1-c)*H_original + c*H_monotonic.

5. Proceeed as earlier.

Even a small monotonicity factor can often improve the convergence of
nonlinear problems.

NOTE: Original BH data is not modified.

### .**from_specs** Create material from specs.

Call syntax:

mat = Material.from_specs('name', name, 'B', B_curve_vector,
'H', H_curve_vector, 'property_name_1', value_1, ...)

### .**init_for_problem** Initialize object for problem.

Normally, this method does very little apart from determining the
stacking factors. It could be used to initialize hysteresis models or
similar in subclasses on Material, though.

### .**initialize_material_data** Initialize reluctivity curves etc.

initialize_material_data(this)

Process given BH data (this.B, this.H). Given data range is used as
such. Extrapolation to higher flux densities is performed by
this.extrapolate_BH_data

initialize_material_data(this, 'monotonicity_factor', c)

Additional improve the reluctivity-monotonicity of the given data with
the following approach:

1. Compute nu = H / B

2. Make nu monotonic.

3. Compute H_monotonic = nu * B

4. Replace H := (1-c)*H_original + c*H_monotonic.

5. Proceeed as earlier.

Even a small monotonicity factor can often improve the convergence of
nonlinear problems.

NOTE: Original BH data is not modified.

### .**iron_loss_density_frequency_domain_Bertotti** Iron loss density computed
with the frequency-domain Bertotti model.

WARNING: make sure the that the solution used contains a full fundamental
period of the flux density waveforms.

WARNING: many concentrated winding configurations result in sub-harmonics
in the rotor field. In this case, multiple electrical periods should be
analysed, and the `use_entire_solution`  keyword argument set to `true`
when calling MaterialBase.losses.

### .**iron_loss_density_time_domain_Steinmetz** Iron loss density from modified Steinmetz
model.

This method computes the iron loss density components from a, say,
somewhat Steinmetz-inspired approach. Please see below for some
discussion.

[p_hysteresis, p_eddy, p_excess] =
iron_loss_density_time_domain_Steinmetz(this, Bdata), where

* Bdata : flux density data structure returned from
`MaterialBase.get_B_data` .

The loss components are computed as follows:

p_hysteresis = hysteresis loss density = ch ** abs(Bx^a **  dBx/dt^b) +
abs(By^a * dBy/dt^b)

where a=b=1 by default, if not given in
this.material_properties.steinmetz_exponents = 1x2 vector

p_eddy = eddy loss density = ce * ( (dBx/dt)^2 + (dBy/dt)^2 )

p_excess = c_ex * (dBx/dt)^1.5 + (dBy/dt)^1.5

WARNING: For now, the method also supports a legacy syntax, with the
input arguments (this, timestamps, Bx, By). This syntax is used by the
[time_domain_Steinmetz](time_domain_Steinmetz.html) function. In this case, the returned loss densities are in
W/kg.

**** DISCUSSION** Some discussion on the loss terms can be found below:
* Under single-axis flux density, purely sinusoidal in time (one
frequency component only), and with a=b=1, the approach corresponds
fully to the frequency-domain Bertotti model.
* With more distorted waveforms, the models typically diverge
somewhat. However, user experience has shown that the difference is
typically not catastrophic, especially considering the limitations
of the Bertotti model, such as insensitivity to a DC-bias in the
flux.
* The equation for the hysteresis loss term is what is commonly
called the Modified Steinmetz equation in the literature. Granted, many
authors use it to compute the entirety of the iron losses, rather than
just the hysteresis component. However, it is the author's opinion that
this approach is somewhat ill-advised, given that we do have
theoretically-justified different models to account for the other two
loss components, see below.
* The term for the eddy-current losses is the classical in-lamination
eddy-model, without considering the skin effect.
* The term for the excess losses can again be understood as the
time-domain equivalent of the Bertotti term. Indeed, the early papers
by Bertotti did formulate the excess loss model IN the time domain.
Grantend, the expression was slightly more complex, with some extra
constants. However, the one used here can be understood as an
approximation of it.
* It is known - as much as anything can be *known*  when it comes to
iron losses, that the xy-dependency of the losses could often be better
considered by computing the major and minor axes of the flux vector
trace. However, this would require simulating the entire electrical
period at least - a significant increase in computational cost compared
to the e.g. 1/6th of an electrical period which is commonly enough the
yield the correct (compared to full-period) *total*  iron losses with
this approach adopted here.

### .**loss_density_with_sinusoidal_flux_density** Return ideal loss density.

p = loss_density_with_sinusoidal_flux_density(this, B, f) returns the
loss density under uniaxially alternating sinusoidal flux density, with a
zero-to-peak amplitude of B and a frequency of f. Mainly intended for
quickly comparing materials.

### .**plot_BH** Plot BH curves etc.

### .Material.**process_BH** is a function.
[Bnu, Bdnu] = Material.process_BH(BH, varargin)

### .**raw_reluctivity** Evaluate (non-differential) reluctivity.

nu = raw_reluctivity(this, B2)

### .**save_to_excel** Save material specs to Excel.

### .**set_step** Set new time-step.

set_step(this, kstep, t, varargin)

Does nothing by default

### .Material/**shift_elements** is a function.
this = shift_elements(this, Ne)


