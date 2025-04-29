---
title : Domain
parent: API
grand_parent : Documentation
---
# Summary for: **Domain**  < [Indexable](Indexable.html)

## Class summary

Domain Domain class.

In `EMDtool` , a 'Domain' represents all aspects of some interesting part of an
electric machine or electromagnetic problem. Thus, a domain has

* A [Material](Material.html) that it consists of

* One or more <Surface.html Surfaces>

Instantiation:

this = Domain(domain_name, material_object)

this = Domain(domain_name, material_object, surface_1, surface_2,
...)

Surfaces can be added with `this.add_surface`

## Properties

### .**copied_from** - a Domain that his has been replicated from, if any

### .**copied_to** - a Domain that this has been replicated to, if any

### .**elements** - Indices of the elements, in this.root().mesh

### .**material** - The [Material](Material.html) that this domain consists of

### .**orientation** - orientation (for e.g. anisotropic materials

### .**remanence_direction** Remanence flux density direction.

Remanence flux density direction. The following options are
routinely supported:
* 'radial' or 'circumferential' : Each element is magnetizes to
either radial or circumferential direction. Can also be
'-radial' or '-circumferential'.

When replicating the elementary geometry after meshing, the
remanence direction is normally updated by the `copy_domain`
method of the [RadialGeometry](RadialGeometry.html) or the [AxialGeometry](AxialGeometry.html) base
classes, each in turn calling the `update_remanence_direction_to_new_sector`
method. While sufficient for most cases, special geometries can
require updating this method.

### .**surfaces** - 2D surfaces in this

### .**volumes** - 3D volumes, if any (experimental)


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_surface** Add one or more Surfaces to this.

### .**add_tolerance_box** Add size tolerance box around domain.

This function is intended for modelling size tolerances in permanent
magnets in particular.

add_tolerance_box(this, w) performs the following steps:
* Shrinks the size of all Surfaces in `this` by `w/2` with `Surface.contract`
* In other words, a total reduction of `w` of all main dimensions
results, at least for rectangular surfaces.
* A new domain is added to the parent geometry, consisting of the shell
between the original surfaces and the shrunk ones.
* The material for the shell will be Air (0) unless given as an input
(See below)

add_tolerance_box(this, w, material) specifies the material for the
shell.

### .**add_volume** Add one or more volumes to this.

### .AREA  Filled ****area**** 2-D plot.
AREA(Y) plots the vector Y or plots each column in matrix Y as a
separate curve and stacks the curves. The x-axis automatically
scales to 1:size(Y,1). The values in Y can be numeric or duration
values.

AREA(X,Y) plots Y versus X and fills the **area** between 0 and Y. The
values in X can be numeric, datetime, duration or categorical
values.

If Y is a vector, then specify X as a vector of increasing
values with length equal to Y. If the values in X are not
increasing, then AREA sorts the values before plotting.

If Y is a matrix, then specify X as a vector of increasing
values with length equal to the number of rows in Y. AREA plots
the columns of Y as filled areas. For each X, the net result is
the sum of corresponding values from the rows of Y. You also
can specify X as a matrix with size equal to Y. To avoid
unexpected output when X is a matrix, specify X so that the
columns repeat.

AREA( ** _ ,BASEVALUE) specifies the base value for the **area** fill.
The default BASEVALUE is 0. Specify the base value as a numeric
value.

AREA( ** _ ,Name,Value) modifies the appearance of the **area** chart
using one or more name-value pair arguments.

AREA(AX, ** _ ) plots into the axes specified by AX instead of the
current axes.

H = AREA( ** _ ) returns one or more Area objects. AREA creates one
object for vector input arguments and one object per column for
matrix input arguments.

See also PLOT, BAR.

### .parsing center

### .**copy** Deep **copy** of this.

### .**copy_root** Original ancestor in replication chain

### .**last_copy** Latest domain in replication chain

### .Domain/**mass** is a function.
m = mass(this)

### .Domain/**number_of_copies** is a function.
n = number_of_copies(this)

### .**plot** Plot all surfaces in 2D.

### .**plot3** Plot all surfaces in 3D.

### .Domain/**plot_elementwise_remanence_direction** is a function.
h = plot_elementwise_remanence_direction(this, varargin)

### .**plot_remanence_direction** Plot remanence.

plot_remanence_direction(this, varargin) plots remanence
direction using quiver, with varargin.

### .remanence_direction Remanence direction vector.

Bdir = remanence_direction_at(this) returns the remanence direction at
the element centers of `this.elements`.

Bdir = remanence_direction_at(this, coordinate_or_element_index) returns
the remanence direction vector at the given coordinates or elements.

### .Domain/**visualize** is a function.
visualize(this, varargin)


