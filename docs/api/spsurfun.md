---
title : spsurfun
parent: API
grand_parent : Documentation
---
# Summary for: **spsurfun**

SPSURFUN Evaluate the sparse grid interpolant at single point
IP = SPSURFUN(Y,Z)  Computes the interpolated value IP at
the single point [Y1, ..., YD] for the sparse grid
interpolant Z.

[IP,IPGRAD] = SPSURFUN(Y,Z)  Computes the interpolated
value IP and the gradient vector IPGRAD.

Example:
f = inline('x.^2 + y.^2 - 2.*z');
g1 = inline('2*x + 0*y + 0*z');
g2 = inline('2*y + 0*x + 0*z');
g3 = inline('-2  + 0*x + 0*y + 0*z');
z = spvals(f,3,[],spset('GridType','Chebyshev'));
[ip,ipgrad] = **spsurfun**([0.5, 0.2, 0.2], z)
f_exact = f(0.5, 0.2, 0.2)
g_exact = [g1(0.5, 0.2, 0.2); ...
g2(0.5, 0.2, 0.2); ...
g3(0.5, 0.2, 0.2)]

See also SPINTERP, SPVALS.

Note:
SPSURFUN is provided for conveniece to be used as an
alternative to SPINTERP, where the point Y to be
evaluated is given as a row or column vector. This
functional form is often adopted by multivariate
optimization algorithms (such as fminsearch) in
Matlab.
Note that this form allows the evaluation of the sparse
grid interpolant at a single point only. Therefore, It
is recommended to use SPINTERP instead if multiple
evaluations of the interpolant can be performed
simultaneously.

