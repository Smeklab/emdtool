---
title : InhomogeneousMaterial
parent: API
grand_parent : Documentation
---
# Summary for: **InhomogeneousMaterial**  < [Material](Material.html)

## Class summary

InhomogeneousMaterial Inhomogeneous material properties class.

This class implements some simple functionality for analysing
materials with non-homogeneous yet isotropic material properties.

The class supports setting the following mechanical properties
* Young's modulus
* Poisson's ratio
* Density
independently for each element. Please note that the properties must
be set either for **all**  of the elements, or none of them. In other
words, the size of e.g. `this.elementwise_Youngs_modulus_values` must
equal the size of `this.elements`, or be empty. Likewise, the
indexing is obviously local, i.e. setting the n:th entry of
`this.elementwise_Youngs_modulus_values` corresponds to the Young's
modulus of `this.elements(n)` in the global indexing scheme.

For magnetic inhomohenuity, two options are offered.

The simpler and faster method uses two coefficient for the H and B
values, transforming the elementwise H(B) behaviour into
`Hnew = H_coefficient ** H(B** B_coefficient)`.
The two coefficients are defined elementwise, in `this.elementwise_H_coefficient`
and `this.elementwise_B_coefficient`.

The more general method is to set custom BH curves for sets of
elements using `this.set_elementwise_BH_data`. While it is possible
to set different properties for each and every element, this can
result in slow evaluation times.

The method used is defined by `this.BH_mode`. Setting "simple" uses
the two-coefficient approach, while "general" uses the elementwise
properties.

Custom behaviour can most easily by implemented by subclassing and
then overloading the `interpolate_elementwise_reluctivity` method.

## Properties

### .**BH_mode** Method of BH evaluation.

Either "simple" or "general". See
interpolate_elementwise_reluctivity.

### .**elementwise_B_coefficient** B-coefficient for BH evaluation.

See interpolate_elementwise_reluctivity.

### .**elementwise_H_coefficient** H-coefficient for BH evaluation.

See interpolate_elementwise_reluctivity.

### .**elementwise_Poissons_ratio_values** Elementwise Poisson's ratio.

### .**elementwise_Youngs_modulus_values** Elementwise Young's modulus.

### .**elementwise_density_values** Elementwise density.


## Methods

Class methods are listed below. Inherited methods are not included.

### .basic copy stuff

### .**clear_elementwise_BH_data**(this) Clears custom BH data.

### .**elementwise_density** Return elementwise density.

Returns this.elementwise_density_values if set, and
this.density otherwise.

### .**elementwise_poissons_ratio** Return elementwise Poisson's ratio.

Returns this.elementwise_Poissons_ratio_values if set, and
this.density Poissons_ratio.

### .**elementwise_stiffness_tensor** Plane-strain stiffness tensor.

Returns the elementwise stiffness tensor, for plane-strain
formulation, using Voigt notation in column-major format.

If this.elementwise_Youngs_modulus_values has not been set,
reverts to the method implementation in [Material](Material.html).

### .InhomogeneousMaterial/**from_material** is a function.
this = from_material(this_dummy, mat)

### .**interpolate_elementwise_reluctivity** Return elementwise reluctivities.

[nu, dnu] = interpolate_elementwise_reluctivity(this, Bsquared) returns
the arrays of elementwise reluctivities and differential reluctivities,
the latter defined as dnu/dB^2.

Two options are supported:

The simpler and faster method uses two coefficient for the H and B
values, transforming the elementwise H(B) behaviour into
`Hnew = H_coefficient ** H(B** B_coefficient)`.
The two coefficients are defined elementwise, in `this.elementwise_H_coefficient`
and `this.elementwise_B_coefficient`.

The more general method is to set custom BH curves for sets of
elements using `this.set_elementwise_BH_data`. While it is possible
to set different properties for each and every element, this can
result in slow evaluation times.

The method used is defined by `this.BH_mode`. Setting "simple" uses
the two-coefficient approach, while "general" uses the elementwise
properties.

### .**set_elementwise_BH_data** Sets elementwise BH behaviour.

set_elementwise_BH_data(this, B, H, element_indices) sets the given BH
behaviour for the set of elements given in `element_indices`. Note that
local indexing is used, i.e.
`global_index = this.elements(local_index)`

Please also note that you should always call
`this.clear_elementwise_BH_data` once before calling this method, to
avoid accumulating old data.

Please also note that the BH data must be set for all elements, even if
the default behaviour is assumed for some of them.


