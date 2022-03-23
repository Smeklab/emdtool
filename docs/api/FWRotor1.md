---
title : FWRotor1
parent: API
grand_parent : Documentation
---
# Summary for: **FWRotor1**  < [SynRotorBase](SynRotorBase.html)

## Class summary

FWRotor1 Template for a rotor with field-winding.

Main dimensions:
* leff : stack length
* p : number of pole-pairs
* symmetry_sectors : number of symmetry sectors
* Rout : outer radius
* Rin : shaft radius

Pole-face dimensions:
* r_poleshoe : curvature radius for poleshoe face. Must be <= Rout
* w_poleshoe : poleshoe face width
* h_poleshoe : poleshoe height

Pole body dimensions:
* h_pole : height
* w_pole : width

Field winding window dimensions:
* w_fieldwinding : width
* h_fieldwinding : height

Field winding specifications:
* field_winding : a [FieldWindingSpec](FieldWindingSpec.html) object

Materials:
* rotor_core_material : core material
* rotor_stacking_factor : stacking factor, generally < 1
* shaft_material : shaft material

## Properties

### .FWRotor1/**winding** is a property.

### .FWRotor1/**winding_spec** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .parsing dimensions


