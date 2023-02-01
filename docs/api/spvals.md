---
title : spvals
parent: API
grand_parent : Documentation
---
# Summary for: **spvals**

SPVALS   Construct a sparse grid interpolant
Z = SPVALS(FUN, D) Compute the sparse grid representation Z
for multi-linear sparse grid interpolation of the function
FUN. The grid is computed over the d-dimensional unit cube
[0,1]^D.

Z = SPVALS(FUN, D, RANGE) In addition to the syntax above, the
interpolation box dimensions may be specified. RANGE is a 2 x
D array, e.g. to compute the sparse grid representation over
the domain [0,1]x[2,4]x[1,5] of FUN, RANGE must be [0 1; 2 4; 1
5]. If RANGE is empty (=[]), it is assumed to be [0,1]^D.

Z = SPVALS(FUN, D, RANGE, OPTIONS) computes the sparse grid
representation as above, but with default interpolation
properties replaced by values in OPTIONS, an argument created
with the SPSET function. See SPSET for details. A commonly used
option is the scalar relative error tolerance 'RelTol' (1e-2
by default).

Z = SPVALS(FUN, D, RANGE, OPTIONS, P1, P2, ...) passes the
parameters P1, P2, ... to the objective function FUN.

See also SPGRID, SPVALS, SPSET, SPDIM.

