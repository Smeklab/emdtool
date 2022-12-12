---
title : GeoHelper
parent: API
grand_parent : Documentation
---
# Summary for: **GeoHelper**  < handle

## Class summary

GeoHelper methods:
GeoHelper - is a class.
find_curve - GeoHelper.find_curve is a function.
get_curve_by_name - GeoHelper.get_curve_by_name is a function.
get_curves - get_lines Get all Curves of Entity
get_points - GeoHelper.get_points is a function.
get_surfaces - GeoHelper.get_surfaces is a function.
mirror_surface - unique points
parse_characteristic_length - Parse characteristic lengths for a geometry.
remove_duplicate_points - GeoHelper.remove_duplicate_points is a function.
sort_curves - GeoHelper.sort_curves is a function.
transformed_curve - GeoHelper.transformed_curve is a function.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**GeoHelper**/GeoHelper is a constructor.
obj = GeoHelper
Documentation for GeoHelper/GeoHelper
doc GeoHelper

### .GeoHelper.**find_curve** is a function.
cs = GeoHelper.find_curve(entity, name)

### .GeoHelper.**get_curve_by_name** is a function.
ls = GeoHelper.get_curve_by_name(entity, name)

### .get_lines Get all Curves of Entity

### .GeoHelper.**get_points** is a function.
ps = GeoHelper.get_points(entity)

### .GeoHelper.**get_surfaces** is a function.
ss = GeoHelper.get_surfaces(entity)

### .unique points

### .**parse_characteristic_length** Parse characteristic lengths for a geometry.

parse_characteristic_length(geometry, lcar_max, lcar_min) traverses all
[Points](Points.html) `P` in `geometry`, and then sets the characteristic length of `P`
to `min(lcar_max, max(lshortest, lcar_min))` where `lshortest` is the
shortest non-degenerate `Curve` attached to `P`
* If called with 2 arguments only, `lcar_min` is set to 0.
* Only `Points` with a non-specified characteristic length are
affected.

### .GeoHelper.**remove_duplicate_points** is a function.
GeoHelper.remove_duplicate_points(entity)

### .GeoHelper.**sort_curves** is a function.
cs = GeoHelper.sort_curves(entity, name, direction, coordinate_system)

### .GeoHelper.**transformed_curve** is a function.
lnew = GeoHelper.transformed_curve(cold, point_map)


