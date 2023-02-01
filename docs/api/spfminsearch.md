---
title : spfminsearch
parent: API
grand_parent : Documentation
---
# Summary for: **spfminsearch**

SPFMINSEARCH Optimization of sparse grids using FMINSEARCH.
X = SPFMINSEARCH(Z) starts search at the best available
sparse grid point and attempts to find a local optimizer of the
sparse grid interpolant Z. The entire range of the sparse
grid interpolant is searched.

X = SPFMINSEARCH(Z,XBOX) attempts to find a local optimizer.
in the search box XBOX. The size of search box XBOX must be
smaller or equal to the range of the interpolant.

X = SPFMINSEARCH(Z,XBOX,OPTIONS)  optimizes with the default
optimization parameters replaced by values in the structure
OPTIONS, created with the SPOPTIMSET function.  See SPOPTIMSET
for details.

[X,FVAL] = SPFMINSEARCH(...)  returns the value of the
objective function, described in FUN, at X.

[X,FVAL,EXITFLAG] = SPFMINSEARCH(...)  returns an EXITFLAG
that describes the exit condition of SPFMINSEARCH. Possible
values of EXITFLAG and the corresponding exit conditions are

1  SPFMINSEARCH converged to a solution X.
0  Maximum number of function evaluations or iterations
reached.

[X,FVAL,EXITFLAG,OUTPUT] = SPFMINSEARCH(...) returns a
structure OUTPUT with the number of function evaluations in
OUTPUT.nFevals, and the computing time in OUTPUT.time.
The OUTPUT result from the FMINSEARCH call are returned
as OUTPUT.fminsearchOutput.

Example: (minimizing the three-hump camel-back function)
f = inline('12*x.^2-6.3*x.^4+x.^6+6*y*(y-x)');
range = [-3 3; -3 3];
options = spset('keepFunctionValues','on', ...
'GridType', 'Chebyshev', ...
'DimensionAdaptive', 'on', ...
'DimAdaptDegree', 1, ...
'MinPoints', 10);
z = spvals(f, 2, range, options)
[xopt, fval] = **spfminsearch**(z)

See also SPOPTIMSET, FMINSEARCH.

