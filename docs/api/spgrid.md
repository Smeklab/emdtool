---
title : spgrid
parent: API
grand_parent : Documentation
---
# Summary for: **spgrid**

SPGRID   Compute the sparse grid point coordinates
X = SPGRID(N,D)  Computes the sparse grid points of level N
and problem dimension D. The coordinate value of dimension i
is stored in column i of the matrix X. One row of matrix X
represents one grid point.

X = SPGRID(N, D, OPTIONS) computes the sparse grid points as
above, but with default grid type replaced by the grid type
specified in OPTIONS, an argument created with the SPSET
function. See SPSET for details.

See also SPINTERP, SPVALS, SPDIM.

