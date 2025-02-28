---
title : SlidingAirgap
parent: API
grand_parent : Documentation
---
# Summary for: **SlidingAirgap**  < [SlidingAirgapBase](SlidingAirgapBase.html)

## Class summary

SlidingAirgap Sliding airgap model for radial-flux machines.

The number of airgap layers can be set on the model level by setting
`dimensions.number_of_airgap_layers`

Alternatively, gap-specific arguments can be delivered by setting a
structure `airgap_arguments` into `this.static_component.dimensions`,
with the following optional fields:
* number_of_airgap_layers : Overrides the above, if given.
* cutoff_layer : Essentially, the number of layers on the
moving-component side. Must be 1 < cutoff_layer <
number_of_airgap_layers. Defaults to number_of_airgap_layers - 1.
is_conforming : Do the moving- and fixed-side meshes conform on the
interface? Defaults to true. If false, a duplicate interface layer
of nodes is added to the root model mesh, with the moving-side
nodes added as flux-insulation (Dirichlet) nodes, due to how the
sliding interface is handled.
* Note: second-order tris may sometimes suffer from nonphysical
ripple in this case. A non-conforming mesh can help.

## Properties

### .SlidingAirgap/**displacement_function** is a property.

### .SlidingAirgap/**rotor_angle_now** is a property.

### .SlidingAirgap/**x_displacement** is a property.

### .SlidingAirgap/**y_displacement** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .SlidingAirgap/**fluxplot** is a function.
fluxplot(this, A, rotorAngle, potentials)

### .SlidingAirgap/**get_AGmatrix** is a function.
Sag = get_AGmatrix(this, rotorAngle, N, t, varargin)

### .SlidingAirgap/**get_airgap_meshes** is a function.
[msh_static, msh_moving] = get_airgap_meshes(this)

### .SlidingAirgap/**get_number_of_airgap_layer_nodes** is a function.
data = get_number_of_airgap_layer_nodes(this, args, n_fixed, n_moving)

### .SlidingAirgap/**init** is a function.
init(this, model, n_bnd_static, n_bnd_moving, varargin)

### .SlidingAirgap/**p_virt** is a function.
p_virt = p_virt(this)

### .**set_dynamic_eccentricity** Set dynamic/general eccentricity.

set_dynamic_eccentricity(this, dfun), where dfun is a
function taking as arguments the rotor rotation angle (wm*t)
and timestamp t, and returning a 2x1 vector of the rotor
displacement.

### .set_eccentricity Set constant static eccentricity.

set_eccentricity(this, x, y), where x,y = rotor displacement
in meters.

For dynamic/general eccentricity, see
this.set_dynamic_eccentricity.

### .SlidingAirgap/**t_ag** is a function.
[a, b, tag] = t_ag(this, rotorAngle, varargin)

### .SlidingAirgap/**t_const** is a function.
t_const = t_const(this)

### .SlidingAirgap/**t_moving** is a function.
t_moving = t_moving(this)

### .SlidingAirgap/**tag_solution** is a function.
A_tag = tag_solution(this, A, rotorAngle, use_fixed)

### .SlidingAirgap/**update_rotor_position** is a function.
update_rotor_position(this, rotorAngle, t)


