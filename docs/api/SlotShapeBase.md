---
title : SlotShapeBase
parent: API
grand_parent : Documentation
---
# Summary for: **SlotShapeBase**  < handle & [Annotable](Annotable.html)

## Class summary

SlotShapeBase Base class for slot shapes.

Like it's cousin [WindingLayoutBase](WindingLayoutBase.html), a `SlotShapeBase`  class is
intended to maximize reusability of custom code. Say you want to
implement a slot with a rectangular slot wedge, and fully non-rounded
slot-bottom corners, **and**  you want to use the same shape with two
different [StatorBase](StatorBase.html) stator templates. With a `SlotShapeBase`
subclass, you can.

The intended functionality is as follows. The `SlotShapeBase`  object
class creates all the [Surface](Surface.html)s associated with the slot: typically
the slot-opening (and wedge if any) and the winding layer(s).
Furthermore, it creates the [Material](Material.html) and [Domain](Domain.html) objects required
for the slot opening. All of the above is added to the parent
geometry (e.g. [Stator](Stator.html)).

All of the above happens in the `create_geometry`  method.

The parent geometry is then only responsible for handling everything
outside the slot. To handle the airgap-facing part of the slot
opening, the class contains the property `airgap_surface_curves`  and
the methods `first_airgap_point`  and `last_airgap_point` , assuming
counter-clockwise orientation in everything.

Typically then, a `Surface`  would be created for the stator core.
And, as the slot and the core share a part of the airgap boundary,
the `reduce`  method of the core `Surface`  would then be called to
remove the slot surfaces of the core.


Initialization:
this = SlotShapeClass(parent_geometry)
this = SlotShapeClass(parent_geometry, slot_dimensions)
* slot_dimensions : a structure of some dimensions, overwriting
the correspondingly-named dimensions in
parent_geometry.dimensions

this = SlotShapeClass();
this.set_parent(parent_geometry, varargin)

## Properties

### .**airgap_surface_curves** - curves on the airgap surface, oriented ccw

### .SlotShapeBase/**all_surfaces** is a property.

### .**bottom_curves** - Slot bottom curves.

Curves defining the slot bottom, if any.

### .SlotShapeBase/**dimensions** is a property.

### .**has_bottom** - Does the slot have a defined bottom.

Equivalent to `~isempty(this.bottom_curves)`

### .**has_opening** - Does the slot have a slot opening

this.has_opening is `true` if the slot shape as a slot opening
(either real or all-steel virtual surface), and thus
`this.airgap_surface_curves` is non-empty. If `this.has_opening`
is `false`, then the slot does not touch the airgap at all, and
all its surfaces appear as `holes` in the parent surface.

### .SlotShapeBase/**parent_geometry** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SlotShapeBase** Base class for slot shapes.

Like it's cousin [WindingLayoutBase](WindingLayoutBase.html), a `SlotShapeBase`  class is
intended to maximize reusability of custom code. Say you want to
implement a slot with a rectangular slot wedge, and fully non-rounded
slot-bottom corners, **and**  you want to use the same shape with two
different [StatorBase](StatorBase.html) stator templates. With a `SlotShapeBase`
subclass, you can.

The intended functionality is as follows. The `SlotShapeBase`  object
class creates all the [Surface](Surface.html)s associated with the slot: typically
the slot-opening (and wedge if any) and the winding layer(s).
Furthermore, it creates the [Material](Material.html) and [Domain](Domain.html) objects required
for the slot opening. All of the above is added to the parent
geometry (e.g. [Stator](Stator.html)).

All of the above happens in the `create_geometry`  method.

The parent geometry is then only responsible for handling everything
outside the slot. To handle the airgap-facing part of the slot
opening, the class contains the property `airgap_surface_curves`  and
the methods `first_airgap_point`  and `last_airgap_point` , assuming
counter-clockwise orientation in everything.

Typically then, a `Surface`  would be created for the stator core.
And, as the slot and the core share a part of the airgap boundary,
the `reduce`  method of the core `Surface`  would then be called to
remove the slot surfaces of the core.

NOTE: It is assumed that no [Domain](Domain.html)s are created for the winding
`Surfaces` . By contrast, these are listed in the
`winding_window_surfaces`  property. Normally, the `SlotShapeBase`
object would then by passed on to a `WindingLayoutBase`  class, to
handle everything that goes on inside the winding window(s).

NOTE: For now, slot shapes generally work for stators only.
Documentation for SlotShapeBase/SlotShapeBase
doc SlotShapeBase

### .SlotShapeBase/**clear_geometry** is a function.
clear_geometry(this)

### .SlotShapeBase/**create_geometry** is a function.
obj = SlotShapeBase

### .SlotShapeBase/**first_airgap_point** is a function.
P = first_airgap_point(this)

### .SlotShapeBase/**first_bottom_point** is a function.
P = first_bottom_point(this)

### .**initialize** Parse characteristic lengths and initialize
dimensions.

### .SlotShapeBase/**last_airgap_point** is a function.
P = last_airgap_point(this)

### .SlotShapeBase/**last_bottom_point** is a function.
P = last_bottom_point(this)

### .**set_parent** - Set parent geometry.

set_parent(this, parent)
* set this.dimensions to parent.dimensions
* call this.initialize()


