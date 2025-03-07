---
title : SynRotorBase
parent: API
grand_parent : Documentation
---
# Summary for: **SynRotorBase**  < [RadialGeometry](RadialGeometry.html) & [Geometry3D](Geometry3D.html)

## Class summary

SynRotorBase Base class for synchronous machine rotors.

This class doesn't contain any geometry-creation functionality
(this.mesh_geometry). Symmetry sector angles etc. are determinated
from the number of pole pairs (dimensions.p) and number of symmetry sectors
(dimensions.symmetry_sectors).

Permanent magnet orientation is reversed for each successive pole,
along with rotation according to this.sector_angle.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SynRotor**Base/SynRotor is a function.
this = SynRotor(dim)

### .SynRotorBase/**d_axis_angle** is a function.
y = d_axis_angle(this)

### .SynRotorBase/**directional_airgap_length** is a function.
delta = directional_airgap_length(this)


