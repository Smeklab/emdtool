---
title : YASAStator
parent: API
grand_parent : Documentation
---
# Summary for: **YASAStator**  < [AFStatorBase](AFStatorBase.html) & [LayoutCompatible](LayoutCompatible.html)

## Class summary

YASAStator Axial yokeless stator.

The YASAStator is a template of a 2D axial-flux stator,
modelled on a cylindrical surface with a constant radial coordinate.
Despite the legacy name, YOKED designs are also supported.

Main dimensions:
* leff : effective length, outer minus inner radius
* Qs : number of stator slots
* delta : airgap length
* symmetry_sectors : number of rotational symmetry sectors
* axial_symmetry_sectors : number of axial symmetry sectors

Slot dimensions:
* w_slot_s : slot width
* w_slotOpening_s : slot opening width
* l_tooth_s : total axial length of the stator core
* htt_s : total height of the tooth tip region
* htt_taper_s : height of the straight part of the tooth tip
(closest to the airgap). Note: must be strictly less than htt_s.
* hys : (OPTIONAL) Yoke thickness. The back of the yoke will be
modelled as flux insulation (no flux crossing it).

Control parameters:
* two_sided: (OPTIONAL) is the design two-sided in reality, default
true. For two-sided designs, only one axial half of the geometry is
modelled, with a symmetry condition in the middle.
* axial_symmetry_type : (OPTIONAL) if set to "toroidal", then the
axial boundary is modelled as Dirichlet / flux insulation type.


Winding specification:
* stator_winding : stator winding specification object. NOTE: only
concentrated windings and stranded winding models are supported.

Materials:
* stator_core_material : core material
* stator_stacking_factor : core stacking factor, normally < 1.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .YASAStator/**mean_distance_between_slots** is a function.
l = mean_distance_between_slots(this)


