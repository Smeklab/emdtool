---
title : VIPM1
parent: API
grand_parent : Documentation
---
## Summary for VIPM1
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

Bridge dimensions:
* w_bridge_interpole : Inter-pole (between two successive Vs) bridge width
* w_bridge_center : Center-bridge (tip of V) width
* w_bridge_out : Outer bridge (near airgap surface) width

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
## PROPERTIES
## Methods
Class methods are listed below. Inherited methods are not included.
### * VIPM1 V-shape IPM rotor.

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

Bridge dimensions:
* w_bridge_interpole : Inter-pole (between two successive Vs) bridge width
* w_bridge_center : Center-bridge (tip of V) width
* w_bridge_out : Outer bridge (near airgap surface) width

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
Documentation for VIPM1/VIPM1
doc VIPM1

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for VIPM1/create_geometry is inherited from superclass GeoBase

### * list_dimensions Display dimensions info on command window
Help for VIPM1.list_dimensions is inherited from superclass GeoBase

