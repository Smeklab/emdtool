---
title : SMGridCalculator_DQ
parent: API
grand_parent : Documentation
---
# Summary for: **SMGridCalculator_DQ**  < handle

## Class summary

SMGridCalculator_DQ DQ-grid calculator for synchronous machines.

Computes a grid of (id, iq) pairs, using static analysis and ignoring
damping effects.

calculator = SMGridCalculator_DQ(motor, key, val, ...) with any of the following:

* Jmax_axis : maximum current density per axis. Default 15
Arms/mm^2.

* nbase : speed (rpm) to compute results on. Default 3000.

* Nsamples : number of steps to use. Default 33.

* periodicity : a fraction of full period to analyse. E.g. 6 =
step from 0 to 60 el. degrees. Default 6.

* ids_pu : per-unit current values on d-axis. See below. Default
-1:(1/4):(1/4).

* iqs_pu : per-unit current values on q-axis. The actual currents
for the grid are [id, iq] = meshgrid(ids_pu, iqs_pu) * Imax, where
Imax = Jmax_axis * conductor_area_per_turn_and_coil. Default linspace(0, 1, 5)

Important methods:

* this.compute_all : compute grid.

* grid = this.get_results(args) : get NTGridDQ

Note: The [NTGridDQ](NTGridDQ.html) class uses the [MTPAinterpolant](MTPAinterpolant.html) class to obtain
the (id,iq) currents corresponding to the desired (T,rpm) pair. The
interpolant class only searches the **computed**  (id,iq) range. In
particular, numerical noise can often cause e.g. T(id~=0, iq=0) to be
slightly above zero, which can occasionally lead to very large id<<0
immediately once the field weakening region is entered. A simple,
often sufficient, fix is to simulate an iq range starting from a
small negative pu value, e.g. 1e-2.

## Properties

### .SMGridCalculator_DQ/**demag_computation_arguments** is a property.

### .SMGridCalculator_DQ/**grid** is a property.

### .SMGridCalculator_DQ/**problem** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .SMGridCalculator_DQ/**compute_all** is a function.
this = compute_all(this)

### .SMGridCalculator_DQ/**compute_point** is a function.
solution = compute_point(this, ~)

### .**get_results** Get computed NTGridDQ.

grid = get_results(this, key, val)

* see help NTGridDQ for key, value pairs.

### .--- help for SMGridCalculator_DQ/**maximum_torque_at_speed** ---
SMGridCalculator_DQ/maximum_torque_at_speed is an undocumented builtin SMGridCalculator_DQ method.

### .SMGridCalculator_DQ/**parse_problem_circuits** is a function.
parse_problem_circuits(this, N)

### .saving torque
There = sim_compute_torque(problem, pars, 'static');

### .SMGridCalculator_DQ/**setup_all** is a function.
this = setup_all(this, motor, varargin)

### .SMGridCalculator_DQ/**setup_point** is a function.
this = setup_point(this, k)


