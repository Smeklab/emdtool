---
title : ClassicIPM
parent: API
grand_parent : Documentation
---
# Summary for: **ClassicIPM**  < [SynRotorBase](SynRotorBase.html)

## Class summary

ClassicIPM High-speed / industrial style IPM rotor.

This rotor has one or several rectangular magnets per pole, mounted
along a line perpendicular to the mid-pole radius, separated by an
iron bridge between them, with an air-pocket at both ends of the
magnet line.

Main dimensions:
* p : number of pole-pairs
* leff : effective length
* Rout : outer radius
* Rin : (OPTIONAL) inner radius. If not given, a massive rotor
without shaft is created.

Magnet dimensions:
* w_magnet : magnet width
* hpm : magnet height
* N_magnets : number of magnets per pole
* r_magnet : minimum radius of the magnet-set inner line

Leakage path dimensions:
* w_bridge : thickness of the inter-magnet bridge
* w_pocket : width of the air pocket at the ends of the magnet
line, measured along the inner line.

Materials:
* rotor_core_material : rotor core material
* magnet_material : magnet material
* shaft_material : (OPTIONAL) shaft material. Not required if `Rin`
is not specified.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .import geometry.*


