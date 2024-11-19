---
title : PoledIPM2
parent: API
grand_parent : Documentation
---
# Summary for: **PoledIPM2**  < [SynRotorBase](SynRotorBase.html)

## Class summary

PoledIPM2 Simple IPM model with a salient pole.

A simple template for an IPM motor with salient poles, with a single
rectangular magnet inside the pole. Quite simple and non-robust for
now - manual verification of the feasibility of the geometry is
highly recommended.

Main dimensions, specific to this template:
* Rout : maximum outer radius
* Rin : shaft diameter

* r_poleface : pole face curvature radius
* h_mag : magnet height, radial dimension
* w_mag : magnet width
* magnet_r_bias : Control variable for the radial position of the
magnet within the pole. A value of 0 places the magnet outer
boundary in line with the corners of the pole face.

* r_core_out : Radius of the rotor core, outside the pole.

* rotor_core_material : Rotor core material.
* magnet_material : Magnet material.
* shaft_material : Shaft material.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .parsing dimensions


