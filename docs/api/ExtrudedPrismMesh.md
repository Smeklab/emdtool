---
title : ExtrudedPrismMesh
parent: API
grand_parent : Documentation
---
# Summary for: **ExtrudedPrismMesh**  < [PrismMeshBase3D](PrismMeshBase3D.html)

## Class summary

ExtrudedPrismMesh Class for extruded prism meshes.

The class creates an extruded 3D mesh with prismatic elements, from
a given 2D mesh.

## Properties

### .**Ne2** - number of elements in original 2D mesh

### .**Nl** - number of extruded node layers, equal to numel(this.zs)

### .**Np2** - number of nodes in original 2D mesh

### .**isoparametric** (boolean) Is the mesh isoparametric.

false by default, corresponding to linearly-extruded non-rotated
prismatic elements.

true otherwise. Must be set manually when required.

### .**zs** - z-coordinates of mesh node layers.


## Methods

Class methods are listed below. Inherited methods are not included.

### .ExtrudedPrismMesh/**Bquiver** is a function.
[Bvec, h] = Bquiver(msh3, A, els, varargin)

### .extrudedMachineMesh constructor.

Call syntax
msh3 = extrudedMachineMesh(msh2) to extrude a MachineMesh and
generate a new ExtrudedMachineMesh object msh3.
Documentation for ExtrudedPrismMesh/ExtrudedPrismMesh
doc ExtrudedPrismMesh

### .ExtrudedPrismMesh/**elementCenters** is a function.
x0 = elementCenters(msh3, elem)

### .**elements_in_layer** Indices to all elements in a given layer.

els = elements_in_layer(this, layer), where

* layer : the number of layer OR "mid" or "top" to plot the
ceil(number_of_layers/2)th or number_of_layers:th layer,
respectively.

### .**extrude_elements** 3D elements corresponding to given 2D
elements.

elements_3D = extrude_elements(this, elements_2D)

Get all 3D equivalents, in all layers.

elements_3D = extrude_elements(this, elements_2D, layers)

Limit to the given layers only.

### .**extrude_nodes**

els = extrude_nodes(msh3, nodes)

els = extrude_nodes(msh3, nodes, layers)

### .ExtrudedPrismMesh/**grad_quiver** is a function.
[Bvec, h] = grad_quiver(msh3, A, els, varargin)

### .ExtrudedPrismMesh/**layer_interpolation_matrix** is a function.
P = layer_interpolation_matrix(this, coordinates, element_layer)

### .ExtrudedPrismMesh/**plot_nodes** is a function.
plot_nodes(this, n, varargin)

### .**t** Element definitions

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


