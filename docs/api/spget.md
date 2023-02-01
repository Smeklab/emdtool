---
title : spget
parent: API
grand_parent : Documentation
---
# Summary for: **spget**

SPGET   Get sparse interpolation OPTIONS parameters
VAL = SPGET(OPTIONS,'NAME') extracts the value of the named property
from the sparse grid options structure OPTIONS, returning an
empty matrix if the property value is not specified in
OPTIONS. It is sufficient to type only the leading characters
that uniquely identify the property. Case is ignored for
property names. [] is a valid OPTIONS argument.

VAL = SPGET(OPTIONS,'NAME',DEFAULT) extracts the named property as
above, but returns VAL = DEFAULT if the named property is not
specified in OPTIONS. For example

val = **spget**(opts,'RelTol',1e-2);

returns val = 1e-2 if the RelTol property is not specified in opts.

See also SPSET, SPINTERP, SPVALS.

