---
title : WoundSlot
parent: API
grand_parent : Documentation
---
# Summary for: **WoundSlot**  < handle

## Class summary

WoundSlot Base class for slots supporting automatic winding generation.

## Properties

### .WoundSlot/**interlayer_curves** is a property.

### .WoundSlot/**liner_curves** is a property.

### .WoundSlot/**winding_window_area** is a property.

### .WoundSlot/**winding_window_surfaces** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**WoundSlot** Base class for slots supporting automatic winding generation.
Documentation for WoundSlot/WoundSlot
doc WoundSlot

### .**surface_bounding_box** Winding window surface bounding box in reference
coordinates.

[xmin, h, w] = surface_bounding_box(this, k_surface) returns the bounding
box for this.winding_window_surfaces(k_surface), with
* xmin : minimum x-coordinate of the surface
* h : x-directional span, max(x) - min(x)
* w : y-directional span, max(y) - min(y)

### .WoundSlot/**surface_points_in_reference_frame** is a function.
xs = surface_points_in_reference_frame(this, k_surface)

### .WoundSlot/**surface_to_parent_frame** is a function.
surface_to_parent_frame(this, k_surface, s)


