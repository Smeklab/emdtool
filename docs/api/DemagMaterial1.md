---
title : DemagMaterial1
parent: API
grand_parent : Documentation
---
# Summary for: **DemagMaterial1**  < [Material](Material.html)

## Class summary

DemagMaterial1 Simple demagnetizable magnet material model.

The class utilizes a simple demagnetization model based on given
material data. The demagnetization behaviour along the material axis
is defined as follows:
* A demagnetization curve of type (H, B) is given by the user, for
the temperature in question
* This is set to `this.BH_table_now`
* Material permeability (absolute, not relative) is set by the
user.
* For each element, the B(H) behaviour follows a linear
relationship with the slope `this.mu`, going through the point
(Bmin, Hmin), where `Bmin` is the lowest flux density encountered
by the element so far, and `Hmin` is the corresponding field
strength on the given demagnetization curve.

Alternatively, a simple parametric demagnetization model can be used
by setting `this.use_simple_model = true`.

For the last bullet, the `get_equivalent_Br` method is used,
returning the `H=0` intersect of the current BH curve followed, for
each element.

BH behaviour on the axis perpendicular to the magnetization direction
follows a linear relationship with the slope `this.mu_now`.

See
* `this.evaluate_H_vector`
* `this.evaluate_magnetization_axis_H`
* `this.get_equivalent_Br`

Notes:
* The default demagnetization evaluation functions
(maximum_demag_field function, demag_check script) don't work with
this class.
* When creating geometries, a deep copy of this material class is
generally created. Thus, changing the state of the
originally-defined material object has no effect on simulation
results; you must first do e.g. the following
* `mat_new = rotor.materials.get(mat_name)`
* `mat_new.ignore_demag = true`

## Properties

### .**BH_table_now** Demagnetization curve to follow.

A structure with the fields `H` and `B` containing lookup values
for the current demagnetization curve to follow.

### .**Bmin** Elementwise lowest flux density.

Lowest magnetization-direction flux density encountered so far.

Note: only set when `this.set_step` is called, thus ignoring the
latest time-step by default.

### .**Bmin_cand** Candidate minimum flux density.

Used during the newest time-step.

### .**Br_now** Current non-demagnetized remanence flux density.

Used by the demag model to clamp extrapolated values.

### .**H0** Decay constant for the simple model.

See `this.initialize_simple_model`.

### .**ignore_demag** Ignore demagnetization model.

When true, the default linear approximation is used.

### .**mu_now** Current permeability.

Used as the slope of the recoil curve.

### .**remanence_direction_angles** Elementwise remanence direction.

### .**retain_state** Retain state between successive simulations?

Default `false`, in which case the state (`this.Bmin`) is reset
to `this.Br_now` whenever the `.set_step` method is called with a
step index smaller than `this.step`.

### .**step** Index of the current/latest time-step.

### .**use_simple_model** Use simple demagnetization model.

Use a simple single parameter exponential demagnetization model,
with no BH curve data needed. Defaults to false.

See `this.initialize_simple_model`.


## Methods

Class methods are listed below. Inherited methods are not included.

### .basic copy stuff

### .**differential_reluctivity** (H, dHdB) function.

Reverts to the superclass implementation in case of harmonic analysis or
if `this.ignore_demag` is set to true.

Otherwise, calls `this.evaluate_H_vector` to obtain H, and numerically
differentiates to obtain dHdB by calling the same method

### .**evaluate_H_vector** Evaluates the H(B) vector relationship.

H = evaluate_H_vector(this, Bvector, update_state) evaluates the H(B) vector
relationship by decomposing Bvector into components parallel and
perpendicular to the elementwise remanence direction. The perpendicular
component follows a linear relationship with the slope `this.mu_now`,
while the parallel component is evaluated with
`evaluate_magnetization_axis_H(this, update_state)`

The results are then rotated back to the global frame.

### .**evaluate_magnetization_axis_H** Evaluate H on the magnetization direction.

H = evaluate_magnetization_axis_H(this, B, update_state) returns the
magnetization-axis H following the linear relationship
`H = (B - Br_eq) / this.mu_now`
where
`Br_eq = this.get_equivalent_Br(B);`

If `update_state == true`, `this.Bmin_cand` is updated to `B`.

### .DemagMaterial1/**from_material** is a function.
this = from_material(this_dummy, mat)

### .**get_equivalent_Br** Equivalent remanence.

Br = get_equivalent_Br(this, B) returns the H=0 intercept of the
elementwise (H,B) trace.

The value is computed as
* `Bmin = min(this.Bmin, B);`
* `Hmin` is interpolated from `this.BH_table_now.H` with `Bmin` as
input
** `Br = Bmin - this.mu_now** `Hmin;`
* Values outside the data range of `this.BH_table_now.B` are clamped to
`+/- this.Br_now`

If `this.ignore_demag` is true, `this.Br_now` is returned instead.

### .**initialize_simple_model** Initialize simple demagnetization model.

initialize_simple_model(this, temperature) to specify a temperature.

initialize_simple_model(this, problem) to parse the temperature from the
[MagneticsProblem](MagneticsProblem.html) object.

The simple model uses the remanence flux density and intrinsic coercivity
for the given temperature, with the methods inherited from [Material](Material.html).
The magnetization curve `J(H)` is then assumed to decay exponentially to
zero at `J(-HcJ)`, with the decay constant `-1/this.H0`.

The corresponding flux density is then obtained with
`B(H) = mu0*H + J(H)`.

These results are then used to initialize the BH interpolation table with
`this.set_symmetric_BH_table_from_BH_data`.

### .DemagMaterial1/**parse_element_remanence_directions** is a function.
parse_element_remanence_directions(this)

### .**remanence_flux_density_at_temperature** Remanence flux density.%

Br = remanence_flux_density_at_temperature(this, T) returns zero, as this
method is called by the `MagneticsProblem.set_load_vector` method, to
account for the non-demagnetizable magnet behaviour.

Br = remanence_flux_density_at_temperature(this, T, true) returns the H=0
intercept of the current-set BH curve (this.BH_table_now)

Br = remanence_flux_density_at_temperature(this, T, true, true) used
the behaviour inherited from [Material](Material.html).

### .**set_step** Set new time-step.

set_step(this, kstep, t, varargin)

### .**set_symmetric_BH_table_from_BH_data** Sets a symmetric BH table to follow.

set_symmetric_BH_table_from_BH_data(this, data) parses and sets
`this.BH_table_now` from the given BH curve, a structure `data` with the
fields `B` and `H`.

The method first computes the magnetization M from the given data, then
creates a new magnetization curve that is anti-symmetric with respect to
the intrinsic coercivity, and then computes the corresponding B values.

### .**visualize_BH** Visualize demagnetization/BH behaviour.

[Bs_test, Hs_test] = visualize_BH(this, Bampls) draws (H, B) traces
(numel(Bampls) in total) (magnetization axis only) as B is changed
linearly from Br to Bampls(k) and back.

### .**visualize_demag_curve** Visualizes the given demag curve.

h = visualize_demag_curve(this, varargin) visualizes the currently-used
BH curve and the corresponding magnetization curve.

### .**visualize_lost_remanence** Visualize lost remanance.

Visualizes the amount of remanence flux density lost, elementwise,
compared to the non-demagnetized case.

### .visualize_lost_remanence Visualize retained remanance.

Visualizes the amount of equivalent remanence, per element.


