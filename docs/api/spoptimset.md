---
title : spoptimset
parent: API
grand_parent : Documentation
---
# Summary for: **spoptimset**

SPOPTIMSET   Create/alter sparse grid optimization OPTIONS structure.
OPTIONS = SPOPTIMSET('NAME1',VALUE1,'NAME2',VALUE2,...) creates an
options structure OPTIONS in which the named properties have
the specified values. Any unspecified properties have default
values. It is sufficient to type only the leading characters
that uniquely identify the property. Case is ignored for
property names.

OPTIONS = SPOPTIMSET(OLDOPTS,'NAME1',VALUE1,...) alters an existing
options structure OLDOPTS.

OPTIONS = SPOPTIMSET(OLDOPTS,NEWOPTS) combines an existing options
structure OLDOPTS with a new options structure NEWOPTS. Any new
properties overwrite corresponding old properties.

SPOPTIMSET with no input arguments displays all property names and
their possible values.

See also SPOPTIMGET, SPCOMSEARCH, SPFMINSEARCH, SPMULTISTART.


SPOPTIMSET PROPERTIES

Minimize [ {on} | off ] - Find minimizer

Maximize [ {off} | on ] - Find maximizer (searching for the
minimizer and the maximizer at the same time is allowed)

TolX - Termination tolerance on X [ positive scalar ]
Default is 1e-4. Note that the tolerance on X is taken with
respect to the problem being re-scaled to the unit interval in
each coordinate direction. That is, for instance, a sparse grid
interpolant defined for the box [0, 1e6]x[0, 1e-6] with TolX
= 0.1 would mean a break tolerance of 1e5 in x1 and a tolerance
of 1e-7 in x2-direction. TolX does not apply to SPCGSEARCH.

TolFun - Termination tolerance on the function value [ positive
scalar {1e-6} ]  The search is terminated when the change of
the function value from one iteration to the next is smaller
than TolFun.

MaxIter - Maximum number of allowed iterations [ integer {100} ]

StartPoint [ {best} ` random `  dx1 vector ] - Start search from
best available, random, or specified start point.

TestCorners - Test the range box corner points [ on | {off} ]
Specifically includes the corner points of the search box as
potential start points of the search.

PrevResult - Previous optimizer [ (d+1)x{1|2} double array ]
Specifies a possible best start point, such as from a previous
search over a subdomain of the current search box. Format:
[xoptmin;ymin xoptmax;ymax], where xoptmin and xoptmax are column
vectors. Depending on the contents of the Minimize and Maximize
fields, minima and/or maxima information should be provided.

Method - [ {spcgsearch} ` {spcompsearch} `  spfminsearch ]
Specifies the method used by the multiple random start search
SPMULTISTART. SPCGSEARCH is the default for the Chebyshev grid,
otherwise, it is SPCOMPSEARCH.

NumStarts - Number of restarts [ integer {10} ]
Parameter to the multiple random start method SPMULTISTART. The
following points are considered : (best) + (NumStarts - 1
random points).

OptimsetOptions - Add options structure obtained with OPTIMSET to
the SPOPTIMSET structure. [ struct {[]} ]
This feature is useful if additional configuration of the
Matlab fminsearch algorithm used by spfminsearch is required
beyond the parameters available through **spoptimset**.
Example:
options = **spoptimset**('Optimset', optimset('FunValCheck','on'));

Display - Display options [ {off} | iter ]
Optionally, displays information at each iteration.

