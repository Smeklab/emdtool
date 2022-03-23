---
title : NodalBase
parent: API
grand_parent : Documentation
---
# Summary for: **NodalBase**  < handle

## Class summary

NodalBase is a class.
this = NodalBase(oper)

## Properties

### .NodalBase/**Nf** is a property.

### .NodalBase/**op** is a property.

### .NodalBase/**order** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**NodalBase**/NodalBase is a constructor.
this = NodalBase(oper)
Documentation for NodalBase/NodalBase
doc NodalBase

### .EVAL Execute MATLAB expression in text.
EVAL(EXPRESSION) evaluates the MATLAB code in EXPRESSION. Specify
EXPRESSION as a character vector or string scalar.

[OUTPUT1,...,OUTPUTN] = EVAL(EXPRESSION) returns output from EXPRESSION
in the specified variables.

Security Considerations: When calling EVAL with untrusted user input,
validate the input to avoid unexpected code execution.

Example: Interactively request the name of a matrix to plot.

expression = input('Enter the name of a matrix: ','s');
if (exist(expression,'var'))
plot(eval(expression))
end

See also FEVAL, EVALIN, ASSIGNIN, EVALC.

### .NodalBase/**getData** is a function.
[Nf, order, Nvars] = getData(this, msh)

### .NodalBase/**getIndices** is a function.
inds = getIndices(~, k, msh, varargin)

### .NodalBase/**instantiate_subclass_for_mesh** is a function.
Nmsh = instantiate_subclass_for_mesh(N, msh)


