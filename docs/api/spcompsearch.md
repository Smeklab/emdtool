---
title : spcompsearch
parent: API
grand_parent : Documentation
---
# Summary for: **spcompsearch**

SPCOMPSEARCH  Modified compass (coordinate) search algorithm
performing a local search of the sparse grid inpterpolant.
X = SPCOMPSEARCH(Z)  Finds a local optimizer X for the given
sparse grid interpolant Z using a modified compass search
algorithm starting from the best available sparse grid point.
The entire range of the sparse grid interplant is searched.

X = SPCOMPSEARCH(Z, XBOX) Uses the search box XBOX, X = [a1,
b1; a2, b2; ...]. The size of search box XBOX must be smaller
than or equal to the range of the interpolant.

X = SPCOMPSEARCH(Z, XBOX, OPTIONS)  Additionally, an OPTIONS
structure can be provided, see SPOPTIMSET for further details.

[X,FVAL] = SPCOMPSEARCH(...)  returns the value of the
sparse grid interpolant at X.

[X,FVAL,EXITFLAG] = SPCOMPSEARCH(...)  returns an EXITFLAG
that describes the exit condition of SPCOMPSEARCH. Possible
values of EXITFLAG and the corresponding exit conditions are

1  SPCOMPSEARCH converged to a solution X.
0  Maximum number of iterations reached.

[X,FVAL,EXITFLAG,OUTPUT] = SPCOMPSEARCH(...) returns a
structure OUTPUT with the number of function evaluations in
OUTPUT.nFevals and the computing time in .time.

Example: (minimizing the three-hump camel-back function)
f = inline('12*x.^2-6.3*x.^4+x.^6+6*y*(y-x)');
range = [-3 3; -3 3];
options = spset('keepFunctionValues','on');
z = spvals(f, 2, range, options);
[xopt, fval] = **spcompsearch**(z)

See also SPOPTIMSET.

