---
title : CoatedRotor
parent: API
grand_parent : Documentation
---
# Summary for: **CoatedRotor**  < [SynRotorBase](SynRotorBase.html)

## Class summary

CoatedRotor Rotor with a conductive coat/sleeve.

Typically used for high-speed induction motors.

Main dimensions:
* Rout : airgap-side radius
* Rin : shaft-side radius
* leff : core length
* symmetry_sectors : number of symmetry sectors for model

Rotor dimensions:
* h_coat : coat thickness

Materials:
* rotor_coat_material : Coat material. Must be conductive.
* rotor_core_material : Core material. Can be conductive.
* shaft_material : (OPTIONAL) Shaft material. Can be conductive. Can be equal
to core material to model massive (usually solid) cores. If not
specified, the rotor center will not be modelled.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.


