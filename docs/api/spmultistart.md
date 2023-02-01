---
title : spmultistart
parent: API
grand_parent : Documentation
---
# Summary for: **spmultistart**

SPMULTISTART  Multiple random start optimization method for
sparse grid interpolants.
X = SPMULTISTART(Z)  Attemps to find a global optimizer X of the
sparse grid interpolant Z by performing multiple local searches
starting from random start points. The entire range of the
sparse grid interpolant is searched. Using the default settings,
the first start point is not random but the best available sparse
grid point. By default, SPCOMPSEARCH is used for the local
searches if the grid type is not Chebyshev. If it is, SPCGSEARCH
is used.

X = SPMULTISTART(Z, XBOX)  Uses the search box XBOX, X = [a1,
b1; a2, b2; ...]. The size of search box XBOX must be smaller
than or equal to the range of the interpolant.

X = SPMULTISTART(Z, XBOX, OPTIONS)  Additionally, an
OPTIONS structure can be provided, created with SPOPTIMSET.
For instance, the local optimization method (e.g. SPFMINSEARCH)
used can be selected.

[X,FVAL] = SPMULTISTART(...)  returns the value of the
sparse grid interpolant at X.

[X,FVAL,EXITFLAG] = SPMULTISTART(...)  returns a EXITFLAG
that describes the exit condition of SPCOMPSEARCH. Possible
values of EXITFLAG and the corresponding exit conditions are

1  SPMULTISTART converged to at least one solution X.
0  Maximum number of function evaluations or iterations
reached for all local searches.

[X,FVAL,EXITFLAG,OUTPUT] = SPMULTISTART(...) returns a
structure OUTPUT with the following information:
.time         : Total computing time in s.
.allResults   : Cell array of all local search results.

Example:
f = inline(['(5/pi*x-5.1/(4*pi^2)*x.^2+y-6).^2 +' ...
'10*(1-1/(8*pi))*cos(x)+10']);
range = [-5 10; 0 15];
options = spset('keepFunctionValues','on', ...
'GridType', 'Chebyshev', ...
'DimensionAdaptive', 'on', ...
'DimAdaptDegree', 1, ...
'MinPoints', 10);
z = spvals(f, 2, range, options);
[xopt, fval] = **spmultistart**(z)

See also SPOPTIMSET.

