---
title : HSIPM
parent: API
grand_parent : Documentation
---
# Summary for: **HSIPM**  < [SynRotorBase](SynRotorBase.html)

## Class summary

HSIPM High-speed IPM rotor

The HSIPM rotor template has rectangular magnets embedded within the
rotor, with the long axis of each magnet perpendicular to the radial
vector.

Main dimensions:
* Rout : outer radius
* Rin : inner radius
* leff : effective length
* p : number of pole-pairs

Magnet dimensions
* h_magnet : magnet thickness
* N_magnets : number of magnets per pole
* w_magnet : (OPTIONAL) magnet width. If not given, magnet width is
solved from the bridge and interpole bridge thickness

Bridge thicknesses:
* w_bridge : thickness of the iron bridge between successive
magnets within the same pole
* w_bridge_out : minimum distance between magnet outer corner and
rotor surface
* w_bridge_interpole_half : Half of interpole bridge thickness. The
interpole bridge is the bridge between to magnets of successive
poles. Note that the parameter is half of the final bridge
thickness, due to insurmountable legacy reasons.

Materials:
* rotor_core_material : rotor core material
* magnet_material : magnet material
* shaft_material : shaft material

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .import geometry.*


