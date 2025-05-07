---
title : SplitConductor
parent: API
grand_parent : Documentation
---
# Summary for: **SplitConductor**  < [Conductor](Conductor.html)

## Class summary

SplitConductor Boundary-crossing conductor class.

The SplitConductor class is intended for modelling cases where a
conductor crosses a periodic boundary.

The initialization syntax is

`this = SplitConductor(type, domain, domain_over_split)`, where
* type : defs.solid or defs.stranded (experimental)
* domain : a [Domain](Domain.html) actually belonging to the symmetry sector
being modelled, see below.
* domain_over_split : a [Domain](Domain.html) seen over the periodic boundary.

A typical use case would be modelling either conductive polegaps
between the magnets of an SPM, or a Halbach-array SPM design. In this
case,
* domain : the magnet or polegap segment nearest the
**** counter-clockwise** periodic boundary.
* domain_over_split : the magnet or polegap segment neares the
**** clockwise periodic* boundary.

In any case, the recommended approach for double checking the results
is as follows:
1. Mesh a larger-than-minimal symmetry sector
1. Run a suitable transient simulation
1. Visualize the eddy-current density in the circuit containing
SplitConductor objects. The resulting eddy-current density should
appear smooth and continuous; an incorrect setup of SplitConductors
will result in a jump in the current density in conductors that
should be continuous in reality.

## Properties

### .SplitConductor/**domain_over_split** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .SplitConductor/**copy** is a function.
c = copy(this)

### .SplitConductor/**domains** is a function.
ds = domains(this)

### .identical assingment by default

### .SplitConductor/**electric_potential_at_nodes** is a function.
U = electric_potential_at_nodes(this, u)

### .SplitConductor/**elements** is a function.
els = elements(this)

### .SplitConductor/**integration_matrix** is a function.
M = integration_matrix(this)

### .SplitConductor/**losses** is a function.
p = losses(this, dA, u, M)

### .SplitConductor/**next_domain** is a function.
[dnext, coeff] = next_domain(this)

### .SplitConductor/**nodes** is a function.
[n, n_first, n_next] = nodes(this)

### .SplitConductor/**set_matrices** is a function.
this = set_matrices(this, msh, M, C_Ai, C_au, CC_uu, sigma, column)


