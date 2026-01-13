---
title : MotorModelBase
parent: API
grand_parent : Documentation
---
# Summary for: **MotorModelBase**  < [Indexable](Indexable.html)

## Class summary

MotorModelBase Base class for magnetics models.

Default construction:

motor = MotorModelBase(dimensions, stator, rotor), with

* dimensions : struct

* stator : a [StatorBase](StatorBase.html) object

* rotor : a rotor / [GeoBase](GeoBase.html) object

Detailed construction:

motor = MotorModelBase(dimensions);

motor.add_component(c1, component_name);

motor.add_component(c2, component_name);

motor.add_component(c3, component_name);

motor.add_airgap(static_part, moving_part);

motor.set_outer_boundary(bnd);

motor.finalize();


An important note on meshes and indexing: When adding a component (a
GeoBase) object to the model, the nodes and elements of the component
mesh are appended to the models mesh. Correspondingly, the
`.elements` properties of the component's [Domains](Domains.html) and [Materials](Materials.html)
are updated to refer to the new indexing, i.e. into the model's mesh.
Importantly, to keep things as messy and legacy-y as possible, the
indexing in `component.boundaries` is **** not** updated, and thus are
not e.g. `component.n_ag`. By contrast, `component.edges` **** IS**
updated.

## Properties

### .MotorModelBase/**Ne_component** is a property.

### .MotorModelBase/**Np_component** is a property.

### .**PMs** - permanent magnets

### .**airgap** - airgap container

### .MotorModelBase/**boundaries** is a property.

### .**build_factor_for_iron_losses** Iron loss build factor

Correction coefficient for iron losses. Only used (by default)
inside this.results_summary, multiplying
`summary.total_iron_losses`.

DEFAULT: 1

### .**build_factor_for_winding_losses** Phase winding loss build factor

Correction coefficient for winding losses. Only used (by default)
inside this.results_summary, multiplying
`summary.total_(phase_circuit_name)_losses`.

DEFAULT: 1

### .**circuits** - circuits

### .**components** - geometries making up this

### .**materials** - materials

### .MotorModelBase/**mesh** is a property.

### .MotorModelBase/**periodicityCoeff** is a property.

### .MotorModelBase/**ri_component** is a property.

### .**rotor** - array of moving components

### .**stator** - array of static components

### .MotorModelBase/**symmetrySectors** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_component** Add a component to model.

add_component(this, name, component) adds a [GeoBase](GeoBase.html) object `component`
to the model, by the given `name`.

add_component(this, name, component, 'rotating', true/false) also
specifies whether the component is rotating or not.

When a component is added, the following happens:
* component mesh nodes and elements are added to this.mesh
* component material and domain element indices are updated to global
indexing
* component.boundaries node indices are updated to global indexing

### .**add_gap** Add airgap.

See AirgapContainer.add_gap

### .**compute_torque** Computes torque

T = compute_torque(this, solution)

Computes torque associated with the MagneticsSolution
solution.

T is of size number_of_airgaps x number_of_steps

### .finalizing mesh part

### .MotorModelBase/**get_AGmatrix** is a function.
S = get_AGmatrix(this, rotorAngle, varargin)

### .MotorModelBase/**global_element_indices** is a function.
is = global_element_indices(this, is, component)

### .MotorModelBase/**global_node_indices** is a function.
ns = global_node_indices(this, ns, component)

### .MotorModelBase/**initialize_airgap** is a function.
initialize_airgap(this)

### .MotorModelBase/**local_node_indices** is a function.
ns = local_node_indices(this, ns, component)

### .MotorModelBase/**mass** is a function.
[m, m_domain, m_mat] = mass(this)

### .**plot_airgap_flux_density** Plot airgap flux density.

Plots the normal and tangential components of the airgap flux density in
the current window.

plot_airgap_flux_density(this, solution, step, varargin)

Any extra input arguments are passed on to
`gap.compute_airgap_flux_density_data`, which is also used to compute the
flux density components. For now, ´gap´ equals to
`this.airgap.airgaps(1)`.

plot_airgap_flux_density(this, solution, step, 'plot_spectrum', true/false) to specify
whether or not to plot the flux density spectrum (normal component only)
instead. Other key-value arguments include:
* number_of_harmonics : number of harmonics to plot. Defaults to 50.

### .**plot_flux** Plot flux density.

plot_flux(this, solution)

plot_flux(this, solution, args)

plot_flux(this, solution, steps_to_plot)

plot_flux(this, solution, steps_to_plot, args), where

args:

* 'plot_airgap' : plot airgap flux density (if this.airgap has a method
*fluxplot* ). true/ false (Default: true).

### .MotorModelBase/**plot_raw_airgap_flux** is a function.
plot_raw_airgap_flux(this, Araw, rotor_angle, potentials, varargin)

### .**results_summary** Summary of analysis results.

results = results_summary(this, solution) returns a structure.

results_summary(this, solution) prints the summary to command prompt.

results = results_summary(this, solution, 'verbose', true) returns a
structure AND prints the results to the command line.

The output (structure) contains information like input and output power,
summary of stator.winding terminal quantities, sum and breakdown of iron
losses, and sum and breakdown of losses in all circuits / conducting
bodies.

Interesting output quantities include:

* torque_mean : Mean torque (radial-flux only)

* shaft_power : radial-flux only

* total_losses : self-evident

* efficiency : from shaft power and total losses

* input_power_from_power_balance : shaft power plus total losses

* input_power_from_terminal_waveforms : Does not contain post-processed
loss quantities (typically iron losses, some non-enabled circuits).

Additionally, a number of substructures are also returned:

* phase_circuit_data : summary of phase winding data, returned by the
`this.stator(1).results_summary` method.

* iron_loss_data : summary of iron losses, returned by the
`MaterialBase.losses` method. **** NOTE** the iron loss data substruct
does **** not** consider the effect of
`this.build_factor_for_iron_losses`, while the field
`results.total_iron_losses` does.

Finally, for [CircuitBase](CircuitBase.html) object in the model, the following results are
included:
* circuit_name_loss_data : A structure of loss data returned by the
`circuit_object.losses` method

* total_circuit_name_losses : Total losses in the aforementioned
circuit. Note that the for the phase winding (i.e.
`this.stator(1).winding`), the total losses include the effect of
`this.build_factor_for_winding_losses` - **** none** of the other results
do.

### .MotorModelBase/**rotel** is a function.
els = rotel(this)

### .**set_outer_boundary** Set outer boundary.

set_outer_boundary(this, bnd_1, bnd_2, ...)

Set the given [Boundary](Boundary.html) objects as outer (flux insulation)
boundaries.

### .**to_plot_frame** Transform coordinates to the plot frame.

See `GeoBase.to_plot_frame` for the syntax.

### .VISUALIZE Visualize geometry.

visualize(this, key, val), with:

* 'linestyle' : line style for mesh. Default 'none'

* 'plot_ag' : plot airgap mesh. Default false.

* 'plot_axial' : plot axial view. Default false.

* 'plot_nodes' : plot boundary nodes. Default false.

### .MotorModelBase/**visualize_axial** is a function.
visualize_axial(this, varargin)

### .MotorModelBase/**visualize_radial** is a function.
visualize_radial(this, varargin)


