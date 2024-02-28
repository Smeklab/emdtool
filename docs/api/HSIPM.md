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
* magnet_size_tolerance : (OPTIONAL) If given, an air shell is
added around each magnet. The size of the shell is maintained at
h_magnet x w_magnet, while the size of the actual PM material block
is reduced to (h_magnet - magnet_size_tolerance) x (w_magnet x
magnet_size_tolerance)
* tolerance_box_material : (OPTIONAL) Material to be used for
magnet box. Defaults to generic glue.

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


