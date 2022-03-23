---
title : StatorBase
parent: API
grand_parent : Documentation
---
# Summary for: **StatorBase**  < [RadialGeometry](RadialGeometry.html)

## Class summary

StatorBase Base class for radial-flux stators.

This class doesn't contain any geometry-creation functionality
(this.mesh_geometry). Symmetry sector angles etc. are determinated
from the slot number (dimensions.Qs) and number of symmetry sectors
(dimensions.symmetry_sectors).

For a fully-functioning class, see [Stator](Stator.html).

## Properties

### .**winding** - phase winding circuit, a [PolyphaseWinding](PolyphaseWinding.html) object

### .**winding_spec** - winding specification, a [PolyphaseWindingSpec](PolyphaseWindingSpec.html) object


## Methods

Class methods are listed below. Inherited methods are not included.

### .**mean_distance_between_slots** Mean distance from slot-to-slot.

Mainly used for end-winding volume calculation.

### .**mean_slot_radius** Mean radial coordinate of slot surface.

### .**sector_angle** Angle of smallest symmetry sector.

### .**slot_angle** Angular coordinate of the first slot.

### .**slot_area** Cross-sectional area of a single slot.

### .**symmetry_period** Symmetry period of geometry.

### .StatorBase/**visualize_radial** is a function.
visualize_radial(this, varargin)

### .**winding_angle** Return winding angle.


