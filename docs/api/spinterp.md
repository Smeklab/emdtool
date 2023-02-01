---
title : spinterp
parent: API
grand_parent : Documentation
---
# Summary for: **spinterp**

SPINTERP   Evaluation of sparse grid interpolant
IP = SPINTERP(Z, Y1, ..., YD)  Computes the interpolated
values at (Y1, ..., YD) over the sparse grid. The Y may be
double arrays of equal size for vectorized processing. The
sparse grid data must be given as a structure Z containing the
hierarchical surpluses (computed with SPVALS).

[IP, IPDER] = SPINTERP(Z, Y1, ..., YD)  Computes interpolated
values and derivatives at the specified points. The
derivatives are returned as D x 1 gradient vectors inside of a
cell array that has equal size as the double array IP.

[...] = SPINTERP(Z, Y)  Alternative syntax for calling **spinterp**
with a single matrix Y containing the points to evaluate. The
matrix must have the size 1xD, Dx1, or NxD, where N are the
number of points to evaluate.

Two additional options are available with SPINTERP that are
set by adding a field to the structure Z:
selectOutput [ integer {1} ]  Set the output variable number
if an interpolant with multiple output variables was
constructed with SPVALS.
continuousDerivatives [ 'on' | {'off'} ]  Enable augmented
continuous derivatives for the Clenshaw-Curtis grid.

Examples:
f = inline('x.^2 + y.^2 - 2.*z');
z = spvals(f,3);
f_interp = **spinterp**(z, 0.5, 0.2, 0.2)
f_exact = f(0.5, 0.2, 0.2)
error = abs(f_exact - f_interp)

[f_interp, f_ipgrad] = **spinterp**(z, [0.5, 0.2, 0.2])
z.continuousDerivatives = 'on';
[f_interp, f_ipgrad] = **spinterp**(z, [0.5, 0.2, 0.2])

See also SPGRID, SPVALS, SPSET, SPDIM.
Folders named **spinterp**
Third-party\**spinterp**

