---
title : AxialGeometry
parent: API
grand_parent : Documentation
---
# Summary for: **AxialGeometry**  < [GeoBase](GeoBase.html)

## Class summary

AxialGeometry Base class for 2D axial / linear geometries.

Note: Geometries are assumed oriented so that motion is in the
negative x-direction, and that the meshed geometry begins at x=0 and
extends left (towards negative infinite). Right-extending geometries
are shifted left after meshing to comply.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**copy_domain** Copy domain and apply necessary rotations or
translations.

new = copy_domain(this, old_domain, sector_shift)

DEFAULT behaviour: rotate domain remanence and orientation
directions, if any, by sector_shift.

### .**mesh_elementary_geometry** Mesh elementary geometry.

Like in GeoBase, with an extra shift left if needed to orient
right boundary at x=0.

### .this = **parse_nodes**@GeoBase(this, Surfaces);

### .**sector_shift** Shift in x-direction for meshing.

How much the elementary geometry should be moved while
replicating the elementary mesh.

### .**shift_elementary_nodes** Apply symmetry shift.

### .AxialGeometry/**visualize_radial** is a function.
visualize_radial(this, varargin)

### .y_shift_points Shift all [Point](Point.html) objects of this in
y-direction.

y_shift_points(this, shift)

### .y_shift_points Shift all [Point](Point.html) objects of this in
y-direction.

y_shift_points(this, shift)

### .**y_shift_points** Shift all [Point](Point.html) objects of this in
y-direction.

y_shift_points(this, shift)


