---
title : MatlabMesher
parent: API
grand_parent : Documentation
---
# Summary for: **MatlabMesher**  < handle

## Class summary

MatlabMesher methods:
MatlabMesher - is a class.
get_surface_points - ksurf = 4;
mesh - MatlabMesher/mesh is a function.
mesh_1D - MatlabMesher/mesh_1D is a function.
mesh_surface - MatlabMesher/mesh_surface is a function.

## Properties

### .MatlabMesher/**Pe** is a property.

### .MatlabMesher/**SI_car** is a property.

### .MatlabMesher/**bdef** is a property.

### .MatlabMesher/**curves** is a property.

### .MatlabMesher/**geometry** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**MatlabMesher**/MatlabMesher is a constructor.
this = MatlabMesher(geometry)
Documentation for MatlabMesher/MatlabMesher
doc MatlabMesher

### .pass

### .pass

### .ksurf = 4;

### .MatlabMesher/**loadmesh** is a function.
[p, t, Surfaces] = loadmesh(this)

### .MESH   3-D ****mesh**** surface.
MESH(X,Y,Z,C) plots the colored parametric **mesh** defined by
four matrix arguments.  The view point is specified by VIEW.
The axis labels are determined by the range of X, Y and Z,
or by the current setting of AXIS.  The color scaling is determined
by the range of C, or by the current setting of CLIM.  The scaled
color values are used as indices into the current COLORMAP.

MESH(X,Y,Z) uses C = Z, so color is proportional to **mesh** height.

MESH(x,y,Z) and MESH(x,y,Z,C), with two vector arguments replacing
the first two matrix arguments, must have length(x) = n and
length(y) = m where [m,n] = size(Z).  In this case, the vertices
of the **mesh** lines are the triples (x(j), y(i), Z(i,j)).
Note that x corresponds to the columns of Z and y corresponds to
the rows.

MESH(Z) and MESH(Z,C) use x = 1:n and y = 1:m.  In this case,
the height, Z, is a single-valued function, defined over a
geometrically rectangular grid.

MESH(...,'PropertyName',PropertyValue,...) sets the value of
the specified surface property.  Multiple property values can be set
with a single statement.

MESH(AX,...) plots into AX instead of GCA.

MESH returns a handle to a surface plot object.

AXIS, CLIM, COLORMAP, HOLD, SHADING, HIDDEN and VIEW set figure,
axes, and surface properties which affect the display of the mesh.

See also SURF, MESHC, MESHZ, WATERFALL.

### .MatlabMesher/**mesh_1D** is a function.
mesh_1D(this)

### .MatlabMesher/**mesh_surface** is a function.
[T, inds] = mesh_surface(this, surf, F, varargin)

### .pass


