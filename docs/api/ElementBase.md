---
title : ElementBase
parent: API
grand_parent : Documentation
---
# Summary for: **ElementBase**  < handle

## Class summary

Elements ElementBase class for finite element implementation

## Properties

### .**edge_definitions** Edge definitions

Definition of edges in terms of nodes. Array of size
number_of_edges x nodes_per_edge.

Each row defines the nodes (of reference element) nodes that
define a single edge, in order

### .**is_isoparametric** Boolean

True if element is isoparametric

### .**reference_element** Definition for reference element.

Number of nodes x number of dimensions array, defining the
coordinates of nodes in the reference element.

### .**reference_element_center** Center of reference element.

Coordinates.

### .**type** Type string

Identifier string

### .**unroll_order** Ordering of nodes

Order for reference element nodes such that a meaningful
(counter-clockwise?) polygon is formed of them


## Methods

Class methods are listed below. Inherited methods are not included.

### .Elements ****ElementBase**** class for finite element implementation
Documentation for ElementBase/ElementBase
doc ElementBase

### .**get_mapping_matrix** Vectorized mapping from reference element to global.

For non-isoparametric (non-curved) elements, the mapping is constant over
each element volume, so the method returns
[F, F0] = get_mapping_matrix(this, msh, elements, x_local)
where `F` is the mapping matrix array, each column corresponding to the
mapping matrix in column-major format, and F0 is the linear part of the
mapping operation.

For isoparametric / curved elements, the mapping depends on the local
coordinate `x_local`, the the method returns
[dFdx, Fx] = get_mapping_matrix(this, msh, elements, x_local)
where `dFdx` is the Jacobian matrix of the mapping, and Fx is the value
of the mapping aka the global coordinate corresponding to `x_local`.

**** WARNING** For non-curved elements, the implementation here assumes a
simplex element type, i.e. triangle or tetrahedron. Implementation for
rectangular quads or octs, prisms, etc. must be subclassed.

### .**get_quadrature_points** Quadrature points and weights.

[xq, wq] = get_quadrature_points(this, integrand_order) return
the quadrature points `xq` and weights to integrate an integrand
of the given order over the reference element volume.

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


