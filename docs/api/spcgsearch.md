---
title : spcgsearch
parent: API
grand_parent : Documentation
---
# Summary for: **spcgsearch**

SPCGSEARCH  Optimizes the sparse grid interpolant using the CG
method.
X = SPCGSEARCH(Z) Starts search at the best available
sparse grid point and attempts to find a local minimizer of the
sparse grid interpolant Z. The entire range of the sparse
grid interpolant is searched.

X = SPCGSEARCH(Z,XBOX)  Uses the search box XBOX = [a1,
b1; a2, b2; ...]. The size of search box XBOX must be smaller
than or equal to the range of the interpolant.

X = SPCGSEARCH(Z,XBOX,OPTIONS)  Minimizes with the default
optimization parameters replaced by values in the structure
OPTIONS, created with the SPOPTIMSET function.  See SPOPTIMSET
for details.

[X,FVAL] = SPCGSEARCH(...)  Returns the value of the
sparse grid interpolant at X.

[X,FVAL,EXITFLAG] = SPCGSEARCH(...)  Returns an EXITFLAG
that describes the exit condition of SPCGSEARCH. Possible
values of EXITFLAG and the corresponding exit conditions are

1  SPCGSEARCH converged to a solution X.
0  Maximum number of function evaluations or iterations
reached.

[X,FVAL,EXITFLAG,OUTPUT] = SPCGSEARCH(...) Returns a
structure OUTPUT with the number of function evaluations in
OUTPUT.nFEvals, the number of gradients in .nGradEvals,
and the computing time in .time.

Example: (minimizing the three-hump camel-back function)
f = inline('12*x.^2-6.3*x.^4+x.^6+6*y*(y-x)');
range = [-3 3; -3 3];
options = spset('keepFunctionValues','on', ...
'GridType', 'Chebyshev', ...
'DimensionAdaptive', 'on', ...
'DimAdaptDegree', 1, ...
'MinPoints', 10);
z = spvals(f, 2, range, options)
[xopt, fval] = **spcgsearch**(z)

See also SPOPTIMSET.

