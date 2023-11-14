---
title : VIPM1
parent: API
grand_parent : Documentation
---
# Summary for: **VIPM1**  < [SynRotorBase](SynRotorBase.html)

## Class summary

VIPM1 V-shape IPM rotor.

Basic traction-style V-type IPM rotor.

Main dimensions:
* Rout : airgap-side radius
* Rin : shaft-side radius
* leff : core length
* symmetry_sectors : number of symmetry sectors for model

Magnet dimensions:
* w_mag : magnet width
* h_mag : magnet height
* angle_mag : V-opening angle, radians. Larger-->sharper V
* magnet_height : (OPTIONAL) length of axial magnet segment.
Defaults to leff.
* magnet_size_tolerance : (OPTIONAL) size of extra air box to be
added around the magnet, to account for manufacturing tolerances.
NOTE: the size of the box will be w_mag x h_mag, while the magnet
dimensions will be **** reduced** by the tolerance.

Bridge dimensions:
* w_bridge_interpole : Inter-pole (between two successive Vs)
bridge width. A large-enough magnet size can cause the interpole
bridge to become tapered. This will be notified on Matlab command
prompt. In any case, the realized minimum bridge width will be
saved in `this.data.realized_interpole_bridge_thickness`.
* w_bridge_center : Center-bridge (tip of V) width
* w_bridge_out : Outer bridge (near airgap surface) width

Retaining sleeve dimensions (OPTIONAL all):
* h_sleeve : sleeve thickness
* sleeve_material : sleeve material

Air-pocket dimensions:
* w_pocket_in : Inner pocket width : distance from magnet inner corner to center bridge
* w_pocket_out : Outer pocket width : distance from magnet outer corner to outer bridge

Materials:
* magnet_material
* rotor_core_material
* rotor_stacking_factor : 1 for perfect stacking
* shaft_material

(OPTIONAL) Mesh density parameters:
* lcar_shaft : characteristic length for the shaft
* lcar_bridge_center : characteristic length for center-bridge area
* lcar_bridge_out : characteristic length for outer air-pocket area

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.


