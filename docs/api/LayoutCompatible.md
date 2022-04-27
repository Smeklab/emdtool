---
title : LayoutCompatible
parent: API
grand_parent : Documentation
---
# Summary for: **LayoutCompatible**  < handle

## Class summary

LayoutCompatible Base class for templates compatible with the
Slot-Layout workflow.

LayoutCompatible is an abstract base class for geometries compatible
with the (Slot-)Layout workflow. These templates do not winding
geometry themselves; instead they only create the winding window
surfaces (preferentially with a [SlotShapeBase](SlotShapeBase.html) object) and then the
corresponding winding geometry with the `create_geometry`
method of a [WindingLayoutBase](WindingLayoutBase.html) object (by calling the identically-named
method of a [PolyphaseWindingSpec](PolyphaseWindingSpec.html) object.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.


