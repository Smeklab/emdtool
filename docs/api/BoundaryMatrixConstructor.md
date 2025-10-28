---
title : BoundaryMatrixConstructor
parent: API
grand_parent : Documentation
---
# Summary for: **BoundaryMatrixConstructor**  < [MatrixConstructorBase](MatrixConstructorBase.html)

## Class summary

BoundaryMatrixConstructor methods:
BoundaryMatrixConstructor - is a class.
assemble_fast - BoundaryMatrixConstructor/assemble_fast is a function.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**BoundaryMatrixConstructor**/BoundaryMatrixConstructor is a constructor.
this = BoundaryMatrixConstructor(varargin)
Documentation for BoundaryMatrixConstructor/BoundaryMatrixConstructor
doc BoundaryMatrixConstructor

### .BoundaryMatrixConstructor/**assemble_fast** is a function.
this = assemble_fast(this, fun_test, fun_shape, v, edges, msh, varargin)

### .BoundaryMatrixConstructor/**assemble_flux_matrix** is a function.
this = assemble_flux_matrix(this, varargin)

### .**assemble_matrix** boundary matrix.

assemble_matrix(fun_test, fun_shape, v, edges, msh) :
Int[ fun_test \dot (v*fun_shape) ]
evaluated over edges


