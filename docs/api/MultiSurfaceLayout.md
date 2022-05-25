---
title : MultiSurfaceLayout
parent: API
grand_parent : Documentation
---
# Summary for: **MultiSurfaceLayout**  < handle

## Class summary

MultiSurfaceLayout Base class for Layouts supporting multiple
surfaces.

By default (subclasses of the pure [WindingLayoutBase](WindingLayoutBase.html) class) assume
that there is strictly one (1) winding window [Surface](Surface.html) per each
winding layer (`winding_spec.N_layers`). Attempting to deliver more
Surfaces results in an error.

By contrast, subclasses of the `MultiSurfaceLayout` abandon this
requirement. The corresponding behaviour must be subclassed.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.


