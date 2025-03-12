---
title : ThermalModel
parent: API
grand_parent : Documentation
---
# Summary for: **ThermalModel**  < handle

## Class summary

ThermalModel Basic model-problem class for thermal problems.

Supports coupled FEA-(lumped) network models.

**IMPORTANT**  As the FEA-part of the model is 2-dimensional, it works
with loss densities and heat flux densities per unit length, rather than
losses and fluxes. Importantly, any lumped-network components in the
model must be scaled for 1m axial length, and the number of symmetry
sectors used.

## Properties

### .**ambient_node** Network node(s) corresponding to the ambient temp.

### .**effective_length** Effective length in the out-of-plane dimension.

### .**element_heat_generation** Array of elementwise heat generation
values.

W / m^3

### .**element_thermal_conductivity** Array of elementwise thermal
conductivities.

### .**element_volumetric_heat_capacity** Array of elementwise heat
capacities.

Units in W / deg m^3

### .ThermalModel/**free_nodes** is a property.

### .**matrices** Struct of matrices and arrays.

For holding all kinds of useful stuff.

### .**mesh** FEA mesh

### .**nodes** Array of lumped nodes in this model.

### .ThermalModel/**number_of_mesh_nodes** is a property.

### .ThermalModel/**number_of_network_nodes** is a property.

### .**symmetry_sectors** Number of symmetry sectors


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_node** Add node to model.

add_node(this, node)

### .**assemble_FEA_matrices** Assemble FEA matrices.

Results stored to this.matrices.

### .**assemble_final_matrices** Assemble and return final problem matrices.

[C, M, F] = assemble_final_matrices(this), where
* C : thermal resistivity matrix
* M : thermal capacitance matrix
* F : heat source/sink vector

The matrices contain the contributions from the pure-FEA part, and
optionally summing the contributions from `this.nodes`, obtained by calling
`node.get_matrices()` separately for each node.

### .**assemble_source_vector** Assemble heat source vector, pure-FEA part.

### .**compute_sensitivity** Simple sensitivity analysis.

compute_sensitivity(this, solution) computes simple sensitivity analysis
for the given solution. The analysis is computed by going through all
nodes ([ThermalNode](ThermalNode.html)) and associated connections ([ThermalNetworkConnection](ThermalNetworkConnection.html))
in the model one by one, increasing the `correction_coefficient` property by 10
percent, and re-solving the model for each case. The correction
coefficient is returned to its original value after solving.

The results are then printed in the command line by picking the 20
largest changes in the node temperatures, and printing associated node
and connection names plus the increase in temperature. The print format
is:
(Node/Connection) <name of the element> (the sensitivity of which is
being adjusted) : <change in temperature> for <name of the node, the
temperature of which changed>

[dT, names, elements] = compute_sensitivity(model, solution, verbose)
returns the array dT, of size number_of_network_nodes x number of nodes +
connections, a string array names of the node and connection names, and
an array of the nodes and connections corresponding to the names.

### .ThermalModel/**parse_boundary_matrix** is a function.
parse_boundary_matrix(this)

### .**plot_thermal_conductivity** Plot conductivity.

Plot elementwise thermal conductivities.

plot_thermal_conductivity(this, varargin)

### .**set_ambient** Set ambient temperature node.

set_ambient(this, node)

### .**solve_steadystate** Solve steady-state temperatures.

solution = solve_steadystate(this) solves the current thermal model in
steady-state and returns the solution object.


