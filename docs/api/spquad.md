---
title : spquad
parent: API
grand_parent : Documentation
---
# Summary for: **spquad**

SPQUAD   Compute integral value of sparse grid interpolant.
Q = SPQUAD(Z)  Computes the integral over the sparse grid
domain. The sparse grid data must be given as a structure Z
containing the hierarchical surpluses (computed with
SPVALS).

Example:
f = inline('x.^2 + y.^2 - 2.*z');
options = spset('GridType','Chebyshev','Vectorized','on');
z = spvals(f,3,[],options);
F_quad = **spquad**(z)
F_exact = -1/3
error = abs(F_exact - F_quad)

See also SPVALS.

