---
title : SpaceVectors
parent: API
grand_parent : Documentation
---
# Summary for: **SpaceVectors**  < handle

## Class summary

SpaceVectors Class for handling generalized Park-Clarke and inverse
transformations, almost following the methodology in
'A generalized transformation methodology for polyphase electric
machines and networks',  10.1109/IEMDC.2015.7409032.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Cmatrix** Matrix for transforming to the alpha-beta frame.

C = ParkClarke.Cmatrix()

C = ParkClarke.Cmatrix(phases)

Matrix for transforming phase quantities to the non-rotating alpha-beta
frame. In this frame, the first 2 component correspond to the
traditional ab-frame. The next two components represent the third
harmonic, the next two the fifth, and so on. For odd phase numbers, the
last component is the zero-sequence component.

### .SpaceVectors.**Pmatrix** is a function.
P = SpaceVectors.Pmatrix(varargin)

### .SpaceVectors.**derivate_phase_values** is a function.
dv = SpaceVectors.derivate_phase_values(x, angles, ts, varargin)

### .**dq** Transformation from phase to synchronous frame.

v = ParkClarke.dq(x, angles)

Transfrom the array x, of size m x numel(angles), into the generalized dq0 frame.
Here:

* m : the number of phases

* angles : a 1D array of the electrical radians considered.

For 3-phase systems, v(1:2,:) contains the d- and q-components, while
the third row is the 0-sequence component.

For systems with more than three phases, the first two rows are as
described earlier. The following rows then represent the synchronous frames
for the higher harmonics:

* Any frequency components in x rotating at 3x the synchronous
speed appear as dc-components in v(3:4, :)

* Any frequency components in x rotating at 5x the synchronous
speed appear as dc-components in v(5:6, :)

* ...

* For systems with an odd number of phases, v(end, :) is the
zero-sequence component.

v = ParkClarke.dq(x, angles, bias)

Apply additional rotation, in total angles + bias.

v = ParkClarke.dq(x, angles, obj)

Parse bias angle from obj, being either a

* [MagneticsProblem](MagneticsProblem.html) object.

* [MotorModelBase](MotorModelBase.html) object.

### .xy Transformation from dq frame to synchronous frame (non-rotor
coordinates).

v = ParkClarke.xy(x, angles)

Transform phase quantities to the frames rotating at 1x (components
1-2), 3x (components 3-4), 5x (components 5-6) the frame defined by
input angles.

v = ParkClarke.xy(x, angles, bias)

Apply additional rotation, in total angles + bias.

v = ParkClarke.xy(x, angles, obj)

Parse bias angle from obj, being either a

* [MagneticsProblem](MagneticsProblem.html) object.

* [MotorModel](MotorModel.html) object.

### .**inverse_transform** Transform alpha-beta frame signal to phase quantities.

v = inverse_transform(x)

See ParkClarke.Cmatrix for details on the transformation.

### .TODO split 4-multiple-phase angles more evenly

### .**transform** Transform phase signal to the alpha-beta frame.

v = transform(x)

See ParkClarke.Cmatrix for details on the transformation.

### .SpaceVectors.**uvectors** is a function.
u = SpaceVectors.uvectors(varargin)

### .**xy** Transformation from synchronous frame to phase quantities.

See SpaceVectors.dq for more details.


