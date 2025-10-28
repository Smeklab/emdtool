---
title : MeshBaseInterface
parent: API
grand_parent : Documentation
---
# Summary for: **MeshBaseInterface**  < handle

## Class summary

MeshBaseInterface High-level interface definitions for a mesh class.

## Properties

### .element_type Is the element isoparametric or not.

### .**element_type** Element type

### .**p** Nodal coordinates

### .**t** Element definitions


## Methods

Class methods are listed below. Inherited methods are not included.

### .**MeshBaseInterface** High-level interface definitions for a mesh class.
Documentation for MeshBaseInterface/MeshBaseInterface
doc MeshBaseInterface

### .**getMappingMatrix** Get mapping matrix.

See ElementBase.get_mapping_matrix

### .**get_assembly_parameters** Get parameters for mesh assemble.

[x_quad, w_quad, Nrows, Ncols, N_test, N_shape] = ...
get_assembly_parameters(this, fun_test, fun_shape)

[x_quad, w_quad, Nrows, Ncols, N_test, N_shape] = ...
get_assembly_parameters(this, fun_test, fun_shape, nonlinearity_order)

### .**get_mapping_determinant** Get mapping determinant from mapping.

Defaults to detF = matrixDeterminant(F);

### .**get_quadrature_points** Get quadrature points.

[x_quad, w_quad] = get_quadrature_points(this, order) returns
the quadrature points for the mesh, for an integrand of the
given order. Defaults to
this.Element.get_quadrature_points(order)


