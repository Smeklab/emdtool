---
title : PhaseCutModulator
parent: API
grand_parent : Documentation
---
# Summary for: **PhaseCutModulator**  < [Modulator](Modulator.html)

## Class summary

PhaseCutModulator Phase-cut voltage modulator.

## Properties

### .**U_grid_peak** - zero-to-peak grid (phase) voltage

### .**Udq** - Ud, Uq voltage instructions

### .PhaseCutModulator/**bias_angle** is a property.

### .PhaseCutModulator/**cut_angle** is a property.

### .PhaseCutModulator/**f** is a property.

### .PhaseCutModulator/**phase_angles** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**PhaseCutModulator** Phase-cut voltage modulator.
Documentation for PhaseCutModulator/PhaseCutModulator
doc PhaseCutModulator

### .**compute_angles** Compute cut and bias angles.

compute_angles(this) computes the cut and bias angles used in `this.U`,
so that the fundamental harmonic of the output voltage matches the
specified `U_dq` in amplitude and phase both.

### .PhaseCutModulator/**get_state** is a function.
s = get_state(this, t)

### .RESET  Reset graphics object properties to their defaults.
RESET(H) resets all properties having factory defaults on the object
identified by handle H to their default values. If h is a figure, MATLAB
does not **reset** PaperPosition, PaperUnits, Position, Units or WindowStyle.
If h is an axes, MATLAB does not **reset** Position and Units.

For example,
RESET(GCA) resets the properties of the current axis.
RESET(GCF) resets the properties of the current figure.

See also CLA, CLF, GCA, GCF, HOLD.


