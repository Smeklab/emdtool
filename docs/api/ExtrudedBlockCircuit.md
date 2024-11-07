---
title : ExtrudedBlockCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **ExtrudedBlockCircuit**  < [Circuit](Circuit.html)

## Class summary

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
to adjust. In case of second-order meshes, the number is
adjusted to conform to the requirements. Importantly, each
element layer will have a mid-layer of nodes, so the number of
mesh element layers will be roughly halved.

The resulting eddy-current density is (close to) z-directional in the
first layer of the extruded mesh, and close to xy-directional in the
top layer.

## Properties

### .**block_height** The segment height in the axial direction. Input
dimension.

Axial length of a magnet segment, so should be dim.leff /
some_integer.

**NOTE:**  This property must, in general, by set manually
(some built-in geometry templates do it for you). If not set, it
defaults to this.get_dimension('extruded_block_height') **IF**  set,
and this.get_dimension('leff') as a fallback.

### .**conductor_volume_multiplier** Volume multiplication factor.

Multiplication factor between discretized conductor volume and
total conductor volume in the physical machine. Equal to
this.effective_length / this.discretized_segment_height * ...
this.root.symmetrySectors

### .**discretized_segment_height** Height of extruded mesh.

Intended for class-internal use only - think thrice before
modifying.

In this class, discretized_segment_height = 0.5 * block_height,
due to symmetry.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**get_matrices** Get circuit matrices for a particular problem

### .**init** Initialize matrices etc. for circuit.

### .**losses** Compute losses.

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

* steps : list of time-steps to plot. Must be >= 2. Defaults to all
steps plotted.

* axlims : axis limits to use for plotting.

* Jlim : current density limits for the color axis (caxis)

* plot_rms : only plot rms current density. Defaults to false.

* compute_J : compute and return the current density.


