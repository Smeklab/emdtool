---
title : SPM1
parent: API
grand_parent : Documentation
---
# Summary for: **SPM1**  < [SynRotorBase](SynRotorBase.html)

## Class summary

SPM1 Template for a surface-PM rotor.

Surface-PM rotor geometry with arc magnets.

Supports:
* inrunner and outrunner geometries
* retaining sleeves
* axially and circumferentially segmented magnets
* Halbach arrays
* custom curvature for the airgap-facing magnet side
* Cooling holes (experimental)

Dimensions:
* Rout : airgap-side radius.
* Rin : (OPTIONAL) shaft radius (inrunners) or yoke-side radius (outrunner).
parsed from *hyr*  if not given.
* hyr : (OPTIONAL) rotor yoke thickness. Used if Rin not given.
* hpm : magnet thickness
* h_pm_edge : (OPTIONAl) magnet thickness at magnet edge. Default :
hpm
* alpha_pm : PM pitch, as a ratio to the pole pitch. In ]0, 1[.
* is_halbach : booleanr, use Halbach array or not.
* h_sleeve : retaining sleeve thickness. OPTIONAL. Default 0.
* number_of_magnet_segments : (OPTIONAL) Number of circumferential magnet
segments. Default 1.
* include_air : (OPTIONAL) Include air outside the rotor core, if
relevant. Defaults to true.

Materials:
* rotor_core_material : rotor core material.
* magnet_material : magnet material.
* rotor_sleeve_material : sleeve material. Only required if
h_sleeve > 0.
* shaft_material : (OPTIONAL) Shaft material. Only used in inrunner
designs. Not giving the shaft material creates a hollow rotor.
* polegap_material : (OPTIONAL) Material of polegaps for SPM designs.
Defaults to Air. For Halbach-array machines, this is the material of the
circumferentially magnetized magnets.

Magnet circuit model:
* magnet_circuit_type : (OPTIONAL). "block" (default) or
"extruded", to use axially-segmented magnet model.
* magnet_height : magnet segment height, if axially segmented
model.

(OPTIONAL) Circular cooling hole dimensions, inrunners only:
* rotor_cooling_holes_per_pole : number of cooling holes per pole,
inside the rotor core.
* rotor_cooling_hole_radius : radius of cooling hole
* rotor_cooling_hole_radial_coordinate : distance of cooling hole
center from origin

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SPM1** Constructor.

this = SPM1(dim)

Initializes the geometry with the dimensions specified in
the struct *dim* .
Documentation for SPM1/SPM1
doc SPM1


