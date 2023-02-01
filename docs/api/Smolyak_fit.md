---
title : Smolyak_fit
parent: API
grand_parent : Documentation
---
# Summary for: **Smolyak_fit**

[Smolyak_interpn,struc,struc_long]=**Smolyak_fit**(obj,varargin)

ANISOTROPIC SMOLYAK INTERPOLATION

uses smolyak algorithm with chebychev grid for a polynomial and a
quasi-uniform grid for a linear form (default) to create a sparse grid
interpolation that allows to focus on dimensions that matter
(anisotropic, or dimension adaptive).

obj is a function that requires a nxd matrix input and gives back nx1
function evaluations.

See Example for syntax

author: Alexander.Dentler at gmail.com, October 9th 2015, all errors
are yours to deal with.

updates: - it now uses its own interpolation values for regions where
the absolute error is below the threshold if
local_interpolation is set to 1.

version 3.1

