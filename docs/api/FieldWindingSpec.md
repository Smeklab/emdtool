---
title : FieldWindingSpec
parent: API
grand_parent : Documentation
---
## Summary for FieldWindingSpec
FieldWindingSpec methods:
FieldWindingSpec - is a class.
## PROPERTIES
* c - FIXME

* overhang_length - winding overhang length
Help for FieldWindingSpec/overhang_length is inherited from superclass PolyphaseWindingSpec

## Methods
Class methods are listed below. Inherited methods are not included.
### * FieldWindingSpec/FieldWindingSpec is a constructor.
this = FieldWindingSpec(varargin)
Documentation for FieldWindingSpec/FieldWindingSpec
doc FieldWindingSpec

### * end_winding_loop_matrix End-winding loop matrix, per slot-segment.

L = end_winding_loop_matrix(this)

Returns a number_of_slots x phases matrix, representing how many
times each phase traverses each 'slot segment' = end-winding
piece between two successive slots.

Only computed for one end of a radial-flux machine.
Help for FieldWindingSpec/end_winding_loop_matrix is inherited from superclass PolyphaseWindingSpec

### * end_winding_segment_inductance Inductance of one end-winding segment.

A 'segment' is understood as the part of end-winding between
two-successive slot pitches. Whenever there are several phases and/or
parallel paths running in the same segment, their self- and mutual
inductances are assumed equal in absolute value. (Signs may differ
depending on the coil/path/phase direction; this is considered by
`this.end_winding_segment_inductance` .

Calculation somewhat follows the approach given by Lipo, T.A. (*) for a random-wound
winding. Iron modelled as perfect conductor, to accound for eddy damping.

(*) Introduction to AC Machine Design

Only works for radial-flux machines.
Help for FieldWindingSpec/end_winding_segment_inductance is inherited from superclass PolyphaseWindingSpec

### * FieldWindingSpec/line_current_matrix is a function.
M = line_current_matrix(this)

### * FieldWindingSpec/line_to_line_voltage_matrix is a function.
M = line_to_line_voltage_matrix(this)

### * this.layout_matrix = repmat([1 -1], 1, 2*this.p);

### * winding_angle Compute winding angle.

a = winding_angle(this)

Compute the stator *winding angle*  i.e. rotation angle for the
direct-quadrature space vector transformation (*without* considering the
rotor bias angle) so that injecting d-axis current into the stator winding
generates a cosinusoidal airgap flux
density waveform (first peak of fundamental at y = 0, assuming
non-salient rotor).
Help for FieldWindingSpec/winding_angle is inherited from superclass PolyphaseWindingSpec

### * xy Transform to phase quantities

y = xy(this, dq, angles), where

* angles : (rotor) angles in electrical degrees.

y = xy(this, dq)
Help for FieldWindingSpec/xy is inherited from superclass PolyphaseWindingSpec

