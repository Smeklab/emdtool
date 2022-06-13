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
get_boundary_curves - Get boundary curves.
get_curves - get_lines Get all Curves of Entity
get_points - GeoHelper.get_points is a function.
get_surfaces - GeoHelper.get_surfaces is a function.
mirror_surface - unique points
order_curves - GeoHelper.order_curves is a function.
parse_characteristic_length - GeoHelper.parse_characteristic_length is a function.
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

### .**get_boundary_curves** Get boundary curves.

cs = get_boundary_curves(entity) returns all `Curves` `c` in `entity` for
which `c.is_boundary` evaluates to `true`.

### .get_lines Get all Curves of Entity

### .GeoHelper.**get_points** is a function.
ps = GeoHelper.get_points(entity)

### .GeoHelper.**get_surfaces** is a function.
ss = GeoHelper.get_surfaces(entity)

### .unique points

### .GeoHelper.**order_curves** is a function.
csout = GeoHelper.order_curves(cs)

### .GeoHelper.**parse_characteristic_length** is a function.
GeoHelper.parse_characteristic_length(geometry, lcar_max, lcar_min)

### .GeoHelper.**remove_duplicate_points** is a function.
GeoHelper.remove_duplicate_points(entity)

### .GeoHelper.**sort_curves** is a function.
cs = GeoHelper.sort_curves(entity, name, direction, coordinate_system)

### .GeoHelper.**transformed_curve** is a function.
lnew = GeoHelper.transformed_curve(cold, point_map)


