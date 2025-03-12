---
title : ThermalModelElement
parent: API
grand_parent : Documentation
---
# Summary for: **ThermalModelElement**  < handle & matlab.mixin.Heterogeneous

## Class summary

ThermalModelElement Base class for thermal model components.

## Properties

### .**correction_coefficient** Arbitrary safety factor.

Arbitrary safety factor or correction coefficient. Must be
defined by subclasses.

The correction coefficient must have an effect immediate effect,
i.e. must work and influence the results (if it does influence
the results) without having to call the `recompute` method.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**ThermalModelElement** Base class for thermal model components.
Documentation for ThermalModelElement/ThermalModelElement
doc ThermalModelElement

### .**recompute** Recompute behaviour.

recompute(this, summary, solution, varargin) recomputes the
behaviour of the element corresponding to the given results
summary, solution object, and an arbitrary number of other
input arguments.

Does nothing by default; must be subclassed.


