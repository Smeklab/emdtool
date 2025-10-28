---
title : NTGridDQ
parent: API
grand_parent : Documentation
---
# Summary for: **NTGridDQ**  < [NTGrid](NTGrid.html)

## Class summary

NTGridDQ Speed-torque grid from d-q grid data.

Initialization:

grid = NTGridDQ(raw_grid, key, val) with any of the following:

* 'U_DC' : DC-link voltage. Default [] --> determine from base
point.

* 'turns_ratio' : multiplier to adjust the motor turn count with.

* 'base_speed' : Base speed, see below.

* 'base_torque' : Base torque. Not used if U_DC is given. If not,
then U_DC = terminal voltage at base point.

* 'speed_range' : speed range to initialize the grid for.

## Properties

### .**U_DC** - DC bus voltage. Changing this recomputes this.interpolant

### .**base_speed** - Base speed

### .**base_torque** - Base torque

### .NTGridDQ/**grid** is a property.

### .NTGridDQ/**interpolant** is a property.

### .NTGridDQ/**speed_range** is a property.

### .**stack_length_ratio** Stack length ratio.

A multiplier to apply on the stack length of the original design.
The effects are computed with `.set_stack_length_ratio`.

### .**turns_ratio** - Multiplier for motor turns. Changing this recomputes this.interpolant.


## Methods

Class methods are listed below. Inherited methods are not included.

### .parsing defaults
Documentation for NTGridDQ/NTGridDQ
doc NTGridDQ

### .NTGridDQ/**compute_detailed** is a function.
data = compute_detailed(this, Icoil, n)

### .NTGridDQ/**get_efficiency_grid** is a function.
[etagrid, torque_grid, speed_grid, electrical_power] = get_efficiency_grid(this, varargin)

### .NTGridDQ/**get_grid** is a function.
[Qint, torque_grid, speed_grid] = get_grid(this, q_name, varargin)

### .**get_op** Interpolate operating point data

[eta, data] = get_op(this, n, T) where

* n : speed (rpm)

* T : torque (Nm)

[eta, I, Pcu, Physt, Peddy] = get_op(this, n, T, 'mode', mode)

* mode : operating mode, 'motor' / 'generator'

Keyword arguments:
* 'compute_detailed' : (EXPERIMENTAL) compute detailed loss breakdown? Default: false.

Outputs:

* eta : efficiency (%)

and data, a structure with fields:

* I : 2x1 vector, [id; iq]. Phase quantities (not coil)

* Pcu

* Physt

* Peddy

* Pexcess

* W : losses

### .**get_speed_and_torque_grid** Meshgrids for calculation.

### .**init_listeners** Add property listeners.

### .**maximum_torque_at_speed** Get maximum torque at given speed.

### .**maximum_torque_envelope** Maximum torque vs speed curve.

[Tmax, n] = maximum_torque_envelope(this, I) returns the maximum torque
vs speed curve `(n, Tmax)`, within the given maximum current `I` (can be
inf to obtain the absolute maximum torque).

The following key-value pairs are supported:
* speed_range : a 1x2 array of minimum and maximum speeds
* torque_range : a 1x2 array of minimum and maximum torques

### .NTGridDQ/**plot_map** is a function.
Qint = plot_map(this, contour_name, varargin)

### .**plot_phase_current_limit** Plots phase current limit.

h = plot_phase_current_limit(this, I, varargin)
Plots the phase current contour for the rms current I (total phase
current, parallel paths considered).

Returns the handle `h` to the contour line.

All input arguments are passed on to this.get_speed_and_torque_grid.

Additionally, the following key-value pairs are passed on to plot for
actually drawing the contour (default values shown):
* 'color' : 'r'
* 'linewidth' : 1
* 'linestyle' : '-'
* 'marker' : 'none'

### .setup Initialization function

### .**save_efficiency_grid** Save efficiency data.

save_efficiency_grid(this, filename)

save_efficiency_grid(this, filename, key, val) with

* 'format', 'grid'/'columns' : Output format. Only 'columns' supported
right now.

* 'sheet', sheet_name : Sheet to save into.

* 'range', rng : Sheet range to save into. Default 'A1'.

**NOTE**  The exported (Id, Iq) currents are defined for the 'coil frame'
using peak-scaled space vectors. Thus, the terminal RMS current is
`sqrt(Id^2 +Id^2) / sqrt(2) * number_of_parallel_paths` for star connection,
and sqrt(3) times that for delta

### .**set_stack_length_ratio** Set stack length ratio.

set_stack_length_ratio(this, v) sets the stack length ratio and adjusts
the results in `this.grid` accordingly, by multiplying the (unchanged)
results from `this.original_grid`.

**** NOTE AND WARNING** : AC loss components are scaled linearly with the
stack length. This is not perfectly accurate for [ExtrudedBlockCircuit](ExtrudedBlockCircuit.html)
and similar losses.

Results are then recomputed with `this.recompute`.


