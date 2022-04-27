---
title : BreadloafRotor
parent: API
grand_parent : Documentation
---
# Summary for: **BreadloafRotor**  < [SynRotorBase](SynRotorBase.html)

## Class summary

BreadloafRotor Template for rotors with breadloaf PMs.

Supports inrunner geometries only, for now.

Supports magnet segmentation both in the axial and circumferential
directions.

DIMENSIONS:

Main dimensions:
* leff : stack length
* symmetry_sectors : number of symmetry sectots
* Rout : airgap-side radius.
* Rin : inner radius

Magnet dimensions:
* h_pm : magnet thickness at thickest point (center)
* w_pm : magnet width
* circumferential_magnet_segments : (OPTIONAL) number of magnet segments along
the magnet width. Defaults to 1 = a solid magnet.

Optional retaining sleeve:
* h_sleeve : (OPTIONAL) sleeve thickness.

Magnet loss model:
* magnet_circuit_type : (OPTIONAL). "block" (default) or
"extruded", to use axially-segmented magnet model.
* magnet_height : magnet segment height, if axially segmented
model.

Materials:
* rotor_core_material : rotor core material.
* rotor_stacking_factor : stacking factor for rotor core
* magnet_material : magnet material.
* polegap_material : (OPTIONAL) Material of polegaps. Defaults to
air.
* sleeve_material : retaining sleeve material

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.


