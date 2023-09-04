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

### .**align_airgap_surface_at** Align airgap surface at given
y-coordinate.

align_airgap_surface_at(this, y) aligns the airgap surface at
the given `y`. By default, gets the first [Curve](Curve.html) named
'n_ag' and aligns its starting point at the given
y-coordinate.

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

### .**update_remanence_direction_to_new_sector** Update domain
remanence direction.

update_remanence_direction_to_new_sector(this, dnew, k)

Update the remanence direction (if any) of the [Domain](Domain.html) dnew
into the new symmetry sector k. The default behaviour is to
rotate the direction by this.sector_angle AND to flip the
orientation (N-S to S-N) for odd sectors. Please subclass if
not appropriate.

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


