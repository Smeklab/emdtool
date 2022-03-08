---
title : Slot1
parent: API
grand_parent : Documentation
---
## Summary for Slot1
Slot1 Basic stator slot shape.

Slot dimensions (fields of the dimensions struct):
* hslot_s : total slot height (airgap to slot bottom) (m)
* wtooth_s : tooth width (m). Prefentially used.
* wslot_s : slot width (m). Used if *wtooth* s_ not given.
* wslot_s_bottom : (OPTIONAL) Slot bottom width. Default: wslot_s.
* r_slotbottom_s : slot bottom corner fillet radius.
* htt_s : Total tooth-tip / slot opening height.
* htt_taper_s : Airgap to tooth-tip taper distance. Or, slot
opening height.
* wso_s : Airgap to tooth-tip taper distance.
* stator_slot_opening_type : "high" (default) or "low"; how far the
winding window extends towards the slot opening

(OPTIONAL) Mesh density parameters:
* lcar_slot : characteristic length for slot top
* lcar_slot_bottom : ditto for slot bottom
## PROPERTIES
* Slot1/N_layers is a property.

* Slot1/layer_orientation is a property.

* Slot1/parent_type is a property.

* Slot1/slot_bottom_type is a property.

* Slot1/slot_opening_type is a property.

* Slot1/slot_shape is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * Slot1 Basic stator slot shape.

Slot dimensions (fields of the dimensions struct):
* hslot_s : total slot height (airgap to slot bottom) (m)
* wtooth_s : tooth width (m). Prefentially used.
* wslot_s : slot width (m). Used if *wtooth* s_ not given.
* wslot_s_bottom : (OPTIONAL) Slot bottom width. Default: wslot_s.
* r_slotbottom_s : slot bottom corner fillet radius.
* htt_s : Total tooth-tip / slot opening height.
* htt_taper_s : Airgap to tooth-tip taper distance. Or, slot
opening height.
* wso_s : Airgap to tooth-tip taper distance.
* stator_slot_opening_type : "high" (default) or "low"; how far the
winding window extends towards the slot opening

(OPTIONAL) Mesh density parameters:
* lcar_slot : characteristic length for slot top
* lcar_slot_bottom : ditto for slot bottom
Documentation for Slot1/Slot1
doc Slot1

### * Slot1/create_geometry is a function.
create_geometry(this)

### * Slot1/create_geometry_old is a function.

### * initialize Parse characteristic lengths and initialize
dimensions.
Help for Slot1/initialize is inherited from superclass SlotShapeBase

### * Slot1.list_dimensions is an undocumented builtin static method or package function.

### * orientation_angle Angle of principal-like axis of this.surfaces.

Typically: angular coordinate of first slot of parent geometry.
Help for Slot1/orientation_angle is inherited from superclass SlotShapeBase

### * Slot1/set_parent is a function.
set_parent(this, parent)

