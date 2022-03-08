---
title : ExtrudedBlockCircuit
parent: API
grand_parent : Documentation
---
## Summary for ExtrudedBlockCircuit
ExtrudedBlockCircuit Circuit for massive conductor blocks.

The ExtrudedBlockCircuit class is used for modelling eddies in
permanent magnets and other massive conductors. The eddy-current
density and losses are computed with a hybrid 2D-3D model, making it
possible to model the effects of axial segmentation.

The class extrudes the mesh of each Conductor in it into the
z-direction, and discretizes the electric scalar potential on the
extruded mesh. Only one axial segment is modelled, and the computed
losses are then multiplied by this.volume_multiplier.

* 9 layers are used by default. Specify dimensions.number_of_extruded_layers
to adjust.

The resulting eddy-current density is (close to) z-directional in the
first layer of the extruded mesh, and close to xy-directional in the
top layer.
## PROPERTIES
* block_height The segment height in the axial direction. Input
dimension.

Axial length of a magnet segment, so should be dim.leff /
some_integer.

* conductor_volume_multiplier Volume multiplication factor.

Multiplication factor between discretized conductor volume and
total conductor volume in the physical machine. Equal to
this.effective_length / this.discretized_segment_height * ...
this.root.symmetrySectors

* discretized_segment_height Height of extruded mesh.

Intended for class-internal use only - think thrice before
modifying.

In this class, **discretized_segment_height** = 0.5 * block_height,
due to symmetry.

## Methods
Class methods are listed below. Inherited methods are not included.
### * ExtrudedBlockCircuit Circuit for massive conductor blocks.

The **ExtrudedBlockCircuit** class is used for modelling eddies in
permanent magnets and other massive conductors. The eddy-current
density and losses are computed with a hybrid 2D-3D model, making it
possible to model the effects of axial segmentation.

The class extrudes the mesh of each Conductor in it into the
z-direction, and discretizes the electric scalar potential on the
extruded mesh. Only one axial segment is modelled, and the computed
losses are then multiplied by this.volume_multiplier.

* 9 layers are used by default. Specify dimensions.number_of_extruded_layers
to adjust.

The resulting eddy-current density is (close to) z-directional in the
first layer of the extruded mesh, and close to xy-directional in the
top layer.
Documentation for ExtrudedBlockCircuit/ExtrudedBlockCircuit
doc ExtrudedBlockCircuit

### * get_matrices Get circuit matrices for a particular problem

### * get_ndof Number of dofs associated with the circuit, for the given
problem and type.

Nui = get_ndof(this, problem, type, pars), where

* problem = [MagneticsProblem](MagneticsProblem.html) or similar

* type = string, usually "static" / "harmonic" / "stepping"
Help for ExtrudedBlockCircuit/get_ndof is inherited from superclass CircuitBase

### * init Initialize matrices etc. for circuit.

### * losses Compute losses.

[Wmean, loss_data] = losses(this, solution)
[Wmean, loss_data] = losses(this, solution, plot_results)

* solution : a [MagneticsSolution](MagneticsSolution.html)

* plot_results : plot current density, boolean. Default: false.

Returns:

* Wmean : mean losses, averaged over CircuitBase.indices_to_average_losses_over(solution)

* loss_data : a structure.

The following loss data is returned:

* mean_losses_per_conductor : as the name says.

* conductor_loss_waveform : also self-evident.

* J : current density in the extruded mesh elements. Only calculated if
the 'compute_J' keyword argument is given OR plotting is on. The returned
value is either the z-component of the induced
current density in one layer of extruded elements, OR the 3D current
density vector. The same current density is used for visualizations,
see below.

[Wmean, loss_data] = losses(this, solution, true, args) with the following
key-value pairs:

* plotting_style : "2D" only, for now.

* plot_layer : If plotting_style == "2D", this specifies the layer of
the extruded mesh, in which the z-component (out-of-plane) of the
induced current density is visualized. The argument is passed on to
this.matrices.m3data([index](index.html)).m3d.elements_in_layer(plot_layer); by
default the value can an integer or "mid" or "top" to plot the mid or
top layer respectively.

* axlims : axis limits to use for plotting.

* Jlim : current density limits for the color axis (caxis)

* compute_J : compute and return the current density.

