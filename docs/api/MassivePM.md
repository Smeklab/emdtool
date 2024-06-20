---
title : MassivePM
parent: API
grand_parent : Documentation
---
# Summary for: **MassivePM**  < [SynRotorBase](SynRotorBase.html)

## Class summary

MassivePM Template for massive-PM rotors.

This class forms a template for 'massive' PM rotors, i.e. rotors that
consist of a massive cylindrical PM, a retaining sleeve, and an
optional eddy-current shield.

Dimensions:
* Rout : outer radius
* h_sleeve : sleeve thickness
* magnet_material : magnet material
* sleeve_material : sleeve material
* h_shield : (OPTIONAL) shield thickness
* shield_material : (OPTIONAL) shield material
* Rin : (OPTIONAL) shaft radius. Defaults to no shaft.
* shaft_material : (OPTIONAL) Shaft materia.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**copy_domain** Copy domain and apply necessary rotations or
translations.

new = copy_domain(this, old_domain, sector_shift)

DEFAULT behaviour: rotate domain remanence and orientation
directions, if any, by sector_shift.


