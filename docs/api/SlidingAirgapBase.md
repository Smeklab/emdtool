---
title : SlidingAirgapBase
parent: API
grand_parent : Documentation
---
# Summary for: **SlidingAirgapBase**  < handle

## Class summary

SlidingAirgapBase Base class for airgaps.

Base class for handling motion via a sliding interface. An airgap
class is responsible for generating a layered airgap mesh, and
computing airgap matrices without introducing extra degrees of
freedom (Lagrange multipliers) to the problem.

**** IMPORTANT**: Most base classes assume that the base meshes of the
geometries are suitably aligned, i.e. origin-centric and the
clock-wise boundary at y=0 for radial flux machines, and extending
from x=0 towards the negative direction for linear/axial flux
machines. Geometry features such as skewing, biasing, multiple slices
of geometry not aligned as described above must be handled by
different means; the recommended approach is manipulating the airgap
matrix, torque computation, airgap plotting, and geometry plotting
interfaces in the [MotorModelBase](MotorModelBase.html) subclass, see the
[RFModelWithSkew](RFModelWithSkew.html) class for a comprehensive example.

## Properties

### .SlidingAirgapBase/**P_fixed** is a property.

### .SlidingAirgapBase/**Sconst** is a property.

### .SlidingAirgapBase/**Sint** is a property.

### .SlidingAirgapBase/**angle_multiplier** is a property.

### .**interpolation_method** Interpolation method to use.
Options include 'lagrange', 'spline', and 'trigonometric'.

Setting 'legacy' reverts to legacy 3rd-order Lagrange
interpolation, with some differences in the implementation.

### .**interpolation_order** Interpolation order-like.

The order of interpolation order, or like, to be used when
computing the continuity conditions for the sliding interface.

The potential of each node on the moving side will depend on the
potential of `interpolation_order + 1` nodes on the static side.

### .SlidingAirgapBase/**is_constant** is a property.

### .SlidingAirgapBase/**le_fixed** is a property.

### .SlidingAirgapBase/**le_fixed_single** is a property.

### .SlidingAirgapBase/**le_int** is a property.

### .SlidingAirgapBase/**model** is a property.

### .SlidingAirgapBase/**moving_component** is a property.

### .SlidingAirgapBase/**n_bnd_moving** is a property.

### .SlidingAirgapBase/**n_bnd_static** is a property.

### .SlidingAirgapBase/**n_fixed** is a property.

### .SlidingAirgapBase/**n_int** is a property.

### .SlidingAirgapBase/**r_int** is a property.

### .SlidingAirgapBase/**static_component** is a property.

### .SlidingAirgapBase/**t_fixed** is a property.

### .SlidingAirgapBase/**t_int** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .SlidingAirgapBase/**compute_stiffness_matrices** is a function.
compute_stiffness_matrices(this)

### .**compute_torque** Torque computation method.

[Torque, Force] = compute_torque(this, solution)

### .**drawFluxLines** Draws flux lines.

drawFluxLines(msh, A, Nl, args) draws a total of Nl flux lines with the
"plot" function and input arguments args

If the mesh struct msh has a field "rotel", the call syntax can be
drawFluxLines(msh, A, Nl, rotorAngle, args)

Copyright (c) 2016 Antti Lehikoinen / Aalto University

### .SlidingAirgapBase/**evaluate_interpolant** is a function.
[I, J, E] = evaluate_interpolant(this, rotorAngle)

### .SlidingAirgapBase/**fluxplot** is a function.
fluxplot(this, A, rotorAngle, potentials)

### .SlidingAirgapBase/**get_airgap_meshes** is a function.
[msh_static, msh_moving] = get_airgap_meshes(this)

### .**get_interpolatedMatrix** Get interpolated matrix.

[Sag, P] = get_interpolatedMatrix(this, rotorAngle) returns the non-constant
part of the airgap matrix for the given rotor angular position, along
with the interpolation matrix P.

The interpolation matrix is computed with `this.evaluate_interpolant`

### .**transform_force_to_stationary_frame** Force transformation.

Fxy = transform_force_to_stationary_frame(this, F, rotor_angle)
transforms the force F from rotor coordinates (rotor at angle
rotor_angle (mech. rad)) to stator coordinates.

### .TRIPLOT Plots a 2D triangulation
TRIPLOT(TRI,X,Y) displays the triangles defined in the
M-by-3 matrix TRI.  A row of TRI contains indices into X,Y that
define a single triangle. The default line color is blue.

TRIPLOT(TR) displays the triangles in the triangulation TR.

TRIPLOT(...,COLOR) uses the string COLOR as the line color.

H = TRIPLOT(...) returns a line handle representing the displayed
triangles edges.

TRIPLOT(...,'param','value','param','value'...) allows additional
line param/value pairs to be used when creating the plot.

Example 1:
X = rand(10,2);
dt = delaunayTriangulation(X);
triplot(dt)

Example 2:
% Plotting a Delaunay triangulation in face-vertex format
X = rand(10,2);
dt = delaunayTriangulation(X);
tri = dt(:,:);
triplot(tri, X(:,1), X(:,2));

See also TRISURF, TRIMESH, DELAUNAY, triangulation, delaunayTriangulation.

### .SlidingAirgapBase/**update_rotor_position** is a function.
update_rotor_position(this, rotorAngle, t)


