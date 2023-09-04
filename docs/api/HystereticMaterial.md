---
title : HystereticMaterial
parent: API
grand_parent : Documentation
---
# Summary for: **HystereticMaterial**  < [Material](Material.html)

## Class summary

HystereticMaterial Material class for hysteretic materials.

This class enables modelling of hysteretic materials within typical
EMDtool problems. However, the actual *model*  of the hysteresis is
implemented by a [HysteresisModel](HysteresisModel.html) object, an instance of which must
be set to `this.hysteresis_model`.

WARNING: HystereticMaterial objects are stateful, associated with the
latest [MagneticsSolution](MagneticsSolution.html). Thus, calling

`solution_1 = problem.solve_xx`
`solution_2 = problem_solve_xx`
`losses = MaterialBase.losses(solution_1)`

will result in **incorrect**  results or a crash.

## Properties

### .**Bcand** - candidate B values, current Newton iteration

### .**Bvalues** - computed values of B, 2xNexNsteps array

### .**Hcand** - same for H

### .**Hvalues** - the same for H

### .**Nsteps** - number of time-steps to be expected

### .**dynamic_hysteresis_coefficient** Dynamic hysteresis coefficient.

Coefficient `c` for the simple dynamic hysteresis model
`H_dyn = c dB/dt`
Computed automatically from the sheet thickness and material
conductivity, corresponding to the classical eddy-current losses.

### .**hysteresis_model** Actual hysteresis model.

An instance of the [HysteresisModel](HysteresisModel.html) class, taking care of the
actual hysteresis modelling.

### .**ndim** - FIXME parse at init

### .**sheet_thickness** - lamination sheet thickness (m)

### .**step** - current time-step

### .**tnow** - current time

### .**tprev** - previous time


## Methods

Class methods are listed below. Inherited methods are not included.

### .basic copy stuff

### .**compute_anhysteretic_curves** Compute anhysteretic BH curves from the
hysteresis model.

Sets the material anhysteretic BH curves (this.B, this.H) to those
computed from the hysteresis model. The computation is done by simulating
symmetric BH loops of successively larger amplitude, and collecting the
(max(B), max(H)) point.

NOTE: in general, the aforementioned point may not be the true "corner"
point of the BH loop.

### .**evaluate_dynamic_H** Evaluate dynamic hysteresis effect.

Dynamic hysteresis is modelled as

H_dynamic = this.electrical_conductivity ** this.sheet_thickness^12 **
1/12 * dB/dt

Call syntax:

[H, dHdB] = evaluate_dynamic_H(this, kstep, B), where

* kstep : index of current time-step

* B : flux density vector at current time-time

Return values:

* H : field strength associated with the dynamic hysteresis

* dHdB : differential reluctivity

H = evaluate_dynamic_H(this, timestamps) computes the value of H at all
time-steps, from this.Bvalues.

### .**loss_density** Elementwise loss density.

Hysteresis loss density is computed as Hirr * dB/dt, where Hirr is the
'irreversible' field component, approximated here as

Hirr = H - Han(B) - Heddy, where

* Han(B) : anhysteretic field strength, computed with the anhysteretic
BH curve (this.B, this.H) and the current value of B

* Heddy : dynamic hysteresis field strength, computed with
`this.evaluate_dynamic_H` .

See MaterialBase.loss_density for input/output syntax.

### .**set_step** Set new time-step.

set_step(this, kstep, t, varargin)


