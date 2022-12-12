---
title : SRMRotor1
parent: API
grand_parent : Documentation
---
# Summary for: **SRMRotor1**  < [SlottedRotorBase](SlottedRotorBase.html)

## Class summary

SRMRotor1 Switched-reluctance / FSM type salient rotor

Main dimensions:
* p : number of poles / the number of rotor teeth.
* leff : stack length
* Rout : outer radius
* Rin : inner radius

Pole shape:
* pole_width : width (arc length) of pole face, as a ratio to the
pole pitch
* pole_width_inner : (OPTIONAL) pole width at the pole-yoke
intersection (arc length), as a ratio to the pole pitch. Defaults
to dim.pole_pitch
* h_tooth_r : tooth height, airgap to yoke-tooth intersection
distance.
* rotor_core_material : rotor core material
* shaft_material : (OPTIONAL) shaft material.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .SRMRotor1/**d_axis_angle** is a function.
a = d_axis_angle(this)


