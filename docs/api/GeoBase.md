---
title : GeoBase
parent: API
grand_parent : Documentation
---
# Summary for: **GeoBase**  < [Indexable](Indexable.html) & [Annotable](Annotable.html)

## Class summary

GeoBase Base class for geometries.

Basic usage:

* Add some [Domain](Domain.html)s with `this.add_domain`

* Add the <Material.html required Materials> with `this.add_material`

* Optionally, add some <CircuitBase.html Circuits> with
`this.add_circuit`

* Call `this.mesh_geometry`  to mesh the elementary geometry and
replicate accordingly.

Note that his is an abstract base class and cannot be instantiated.
Most of the time, you'll be working with either RadialGeometry or AxialGeometry,
or their subclasses. Those classes
handle the practicalities of mesh replication, namely how the
elementary mesh is rotated or translated.

The following methods are recommended to be re-implemented in
subclasses:

* Nrep : number of mesh replications

* symmetry_period : symmetry period of winding etc.

See [RadialGeometry](RadialGeometry.html), [StatorBase](StatorBase.html), [SlottedRotorBase](SlottedRotorBase.html),
[SynRotorBase](SynRotorBase.html)

## Properties

### .**PMs** -  Permanent magnet [Domain](Domain.html) objects

### .GeoBase/**boundaries** is a property.

### .**circuits** -  [Circuit](Circuit.html) objects defined for this

### .**data** - miscellaneous data

### .**domains** -  [Domain](Domain.html) objects making up this

### .nodes = struct() %other nodes

### .GeoBase/**is_meshed** is a property.

### .**materials** -  [Material](Material.html) objects

### .**mesh** - mesh object, WPI


## Methods

Class methods are listed below. Inherited methods are not included.

### .**GeoBase** Constructor
Documentation for GeoBase/GeoBase
doc GeoBase

### .**Nrep** Number of times to replicate elementary mesh.

Nrep(this)

Usually subclassed, but by default returns
this.dimensions.Nrep.

### .**add_circuit** Add [Circuit](Circuit.html) to this.

### .**add_domain** Add [Domain](Domain.html) to this.

In case a Domain with a duplicate name exist, the domain name
is appended to original_name_n, where n = the lowest integer
such that no dublicate names exist.

### .**add_material** Add [Material](Material.html) to this.

Adding a new

### .GeoBase/**add_single_domain** is a function.
add_single_domain(this, dnew)

### .GeoBase/**add_single_material** is a function.
add_single_material(this, mnew)

### .**check_feasibility** Perform partial feasibility check on the geometry.

bl = check_feasibility(this) checks if any of the `Lines` or `Surfaces` in `this`
intersect, using `this.check_line_intersect` and
`this.check_surface_intersect`.

If nothing intersects, the method returns `true`, otherwise `false`.

### .**check_line_intersect** Check if any lines intersect.

check_line_intersect(this)

check_line_intersect(this, 'plot', true) to plot some results.

**WARNING**  Only checks `Lines`, ignoring `Arcs`.

### .**check_surface_intersect** Check if any surfaces intersect.

bl = check_surface_intersect(this)

bl = check_surface_intersect(this, 'plot', true) to plot some results.

### .**copy_domain** Copy domain and apply necessary rotations or
translations to the domain and remanence orientation, if any.

new = copy_domain(this, old_domain, sector_index)

### .create_or_get_material Create or get material.

mout = create_and_add_material(this, m) either

* returns a material mout from this.materials with mout.name = m.name

* returns m, if none found above, and adds it to this.materials

### .**create_geometry** Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.

### .GeoBase/**create_geometry_3D** is a function.
create_geometry_3D(this)

### .GeoBase/**dim** is a function.
d = dim(this)

### .**export_dxf** Export geometry as rudimentary dxf file.

export_dxf(this, fname)

drawing = export_dxf(this, fname, 'skip_save', true) to return drawing
object

export_dxf(this, drawing)

export_dxf(this, fname_or_drawing, key, val, ...) with

* 'Nrep', n : replicate geometry, see below

* 'rep_angle', x : apply angle x for each replication

* 'unit', 'm' or 'mm' : unit to use

* use_python : use Python's dxfwrite (true) or Matlab's dxflib with
experimental ARC and LINE features (DEFAULT).

### .**fill** Fill mesh

fill(this, name, varargin)

Fills the mesh of domain *name* , using varargin{:} as
arguments.

* See [msh_fill](msh_fill.html)
* See this.get_domain for the use of wildcards with *name*

fill(this, varargin)

Plots the entire mesh using varargin{:} as
arguments.

### .**get_domain** Get domain(s) by name.

get_domain(this, name)

Returns the [Domain](Domain.html) with the correct *name* .

The wildcard syntax name_* can be used to find all
replicated domains corresponding to the original domain
with *name* .

### .**list_dimensions** Display dimensions info on command window

### .GeoBase/**mass** is a function.
[m, m_domain, m_mat] = mass(this)

### .**mesh_elementary_geometry** Create mesh for the elementary geometry.

mesh_elementary_geometry(this)

Meshes the *elementary*  geometry, e.g. the raw geometry before possible
replication.

mesh_elementary_geometry(this, 'delete_files', false) to keep the .geo
and .msh files.

Note that the methods `this.shift_elementary_nodes` ,
`this.copy_domain` , and `this.parse_nodes`  have to be implemented.

### .GeoBase/**mesh_elementary_geometry_3D** is a function.
mesh_elementary_geometry_3D(this, varargin)

### .**mesh_geometry** Mesh geometry.

Equivalent to calling `this.mesh_elementary_geometry`  and
`this.replicate_elementary_mesh`

### .**parse_nodes** Parse special nodes.

parse_nodes(this, Surfaces)

Parses special nodes from meshed Surfaces. Usually airgap
and periodic boundary nodes.

### .**plot** Plot nodes on the meshed geometry.

plot(this, varargin)

Equivalent to calling msh_plot(this, varargin{:})

### .**plot_edges** Plot edges

plot_edges(this, edge_definitions), where
* edge_definitions : 2 x number of edges array; indices to
nodes in this.root_mesh.

plot_edges(this, edge_name) to fetch definitions from
this.edges

plot_edges(this, name_or_def, plot_args) to pass on plot_args
to *plot* .

### .**plot_geometry** Plots the geometry.

[] = plot_geometry(this, varargin)

Plots the geometry using *plot*  with *varargin* {:}

### .**remove_unused** Remove unused / unset domains and materials.

First removes Domains that do not have any surfaces, and then Materials
that either don't belong to any Domain, or only belong to a Domain that
was removed during the first step.

### .**replicate_elementary_mesh** Replicate elementary mesh.

replicate_elementary_mesh(this, sector_shift, Nrep)

Replicates the elementary geometry *Nrep*  times. This is performed by

* applying the sector_shift to this.p, using this.shift_elementary_nodes

* eliminating the duplicate nodes on the inter-sector boundaries, with
the nodes corresponding to this.n_cw replaced by this.n_ccw.

### .GeoBase/**replicate_elementary_mesh_3D** is a function.
replicate_elementary_mesh_3D(this)

### .**save_to_excel** Save specifications to Excel sheet.

save_to_excel(this, fname, varargin)

### .**scale_mesh_density** Uniformly scale mesh density.

scale_mesh_density(this, scale) multiplies the characteristic length of
most [Point](Point.html)s in `this`. The airgap-facing points are ignored by default,
see below.

scale_mesh_density(this, scale, 'curves_to_skip', curve_names) ignores
all the [Points](Points.html) that lie on the [Curve](Curve.html)s on specified by their names in
the `curve_names` array of strings. By default, curves named 'n_ag' are
ignored. The characteristic length of the ignored points is not changed.

Other key-value arguments:
* lcar_max : maximum characteristic length after scaling. Defaults to inf.
* lcar_min : minimum characteristic length after scaling. Defaults to
0.

### .**shift_elementary_nodes** Replicate nodes to a new sector.

pnew = shift_elementary_nodes(this, p, k)

Replicated the nodes p of the elementary symmetry sector into
the sector k.

### .**symmetry_period** Symmetry period of the geometry.

symmetry_period(this)

Usually subclassed, but by default returns
this.dimensions.symmetry_period.

### .**to_plot_frame** Function for transforming coordinates.

y = to_plot_frame(this, x, angle, varargin) transforms coordinates from
the mesh frame (`this.mesh.p`) into a so-called plotting frame. This
method is called by most EMDtool plotting functions, so overloading it
can be useful at times, such as for visualizing sliced models. By
default, `angle` is assumed to correspond to the `rotor_angle` concept
used by e.g. [MagneticsProblem](MagneticsProblem.html). In normal single-shaft designs, just the
mechanical rotor angle, that is.

The default implementation does nothing, i.e. y = x.

Additional syntax options include
* to_plot_frame(this, x, component) : specifying the `GeoBase` object
`component` that `x` lies on.
* to_plot_frame(this, x, angle, varargin) : with arbitrary arguments,
for subclass implementations.

### .**triplot** Triangle plot of this.

triplot(this, name, varargin)

Plots the mesh of domain *name* , using varargin{:} as
arguments.

triplot(this, varargin)

Plots the entire mesh using varargin{:} as
arguments.

### .**visualize** **visualize** geometry.

visualize(this)

Visualizes geometry, using msh_fill with 'linestyle',
'none'.

visualize(this, args)

Visualize, passing args to patch.


