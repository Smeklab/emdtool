---
title : RadialGeometry
parent: API
grand_parent : Documentation
---
# Summary for: **RadialGeometry**  < [GeoBase](GeoBase.html)

## Class summary

RadialGeometry Base class for radial geometries.

This class is the lowest-level fully working class for representing
radial-flux geometries. It can handle radial replication of geometry
segments. If remanence_direction is specified for any domain, its
sign is flipped with each replication.

The following properties must be defined in this.dimensions (not
recommended), or as methods of subclasses of RadialGeometry (highly
recommended):

* Nrep : number of mesh replications

* symmetry_period : symmetry period of winding etc.

* sector_angle : angular span of elementary geometry.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**copy_domain** Copy domain and apply necessary rotations or
translations.

new = copy_domain(this, old_domain, sector_shift)

DEFAULT behaviour: rotate domain remanence and orientation
directions, if any, by sector_shift.

### .**moments_of_inertia** Compute moments of inertia.

[Izz, data] = moments_of_inertia(this), where

* Izz : moment of inertia around z-axis

* data : containing other inertia numbers. SI units all.

### .**parse_nodes** Parse interesting nodes after meshing.

parse_nodes(this, Surfaces)

Sets the following properties of this:

* n_ag
* n_dir
* n_cw
* n_ccw

based on the information in *Surfaces*  typically returned
by [gw](gw.html) .

### .**sector_angle** Angle of symmetry sector.

sector_angle(this)

Usually subclassed, but by default returns
this.dimensions.sector_angle.

### .**shift_elementary_nodes** Apply symmetry shift.

### .**update_remanence_direction_to_new_sector** Update domain
remanence direction.

update_remanence_direction_to_new_sector(this, dnew, k)

Update the remanence direction (if any) of the [Domain](Domain.html) dnew
into the new symmetry sector k. The default behaviour is to
rotate the direction by this.sector_angle AND to flip the
orientation (N-S to S-N) for odd sectors. Please subclass if
not appropriate.


