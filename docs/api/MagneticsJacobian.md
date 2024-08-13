---
title : MagneticsJacobian
parent: API
grand_parent : Documentation
---
# Summary for: **MagneticsJacobian**  < [MatrixConstructorBase](MatrixConstructorBase.html)

## Class summary

MagneticsJacobian Jacobian constructor for magnetic problems.

this = MagneticsJacobian(problem, symmetric, test_fun, shape_fun)

## Properties

### .MagneticsJacobian/**DETF** is a property.

### .MagneticsJacobian/**Fvals_shape** is a property.

### .MagneticsJacobian/**Fvals_test** is a property.

### .MagneticsJacobian/**Ires** is a property.

### .MagneticsJacobian/**Ne** is a property.

### .MagneticsJacobian/**dof_shape** is a property.

### .MagneticsJacobian/**force_linear** is a property.

### .MagneticsJacobian/**materials** is a property.

### .MagneticsJacobian/**msh** is a property.

### .MagneticsJacobian/**symmetric** is a property.

### .MagneticsJacobian/**w** is a property.

### .MagneticsJacobian/**x_quad** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**MagneticsJacobian** Jacobian constructor for magnetic problems.

this = MagneticsJacobian(problem, symmetric, test_fun, shape_fun)
Documentation for MagneticsJacobian/MagneticsJacobian
doc MagneticsJacobian

### .**eval** Evaluate Jacobian.

[J, res] = eval(this, X), where

X = discretized vector potential solution

Returns:

J = Jacobian matrix

res = residual vector

### .MagneticsJacobian/**eval_complex** is a function.
[Jrr, Jri, Jir, Jii, resr, resi] = eval_complex(this, X)

### .MagneticsJacobian/**evaluate_matrix** is a function.
J = evaluate_matrix(this)

### .MagneticsJacobian/**evaluate_residual** is a function.
res = evaluate_residual(this, X, k, varargin)

### .**init_assembly** Initialize MagneticsJacobian.

this = init_assembly(this, model, fun_test, fun_shape, symmetric )


