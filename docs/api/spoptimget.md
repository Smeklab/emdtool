---
title : spoptimget
parent: API
grand_parent : Documentation
---
# Summary for: **spoptimget**

SPOPTIMGET   Get sparse grid optimization OPTIONS parameters.
VAL = SPOPTIMGET(OPTIONS,'NAME') extracts the value of the
named property from the sparse grid options structure OPTIONS,
returning an empty matrix if the property value is not
specified in OPTIONS. It is sufficient to type only the leading
characters that uniquely identify the property. Case is ignored
for property names. [] is a valid OPTIONS argument.

VAL = SPOPTIMGET(OPTIONS,'NAME',DEFAULT) extracts the named
property as above, but returns VAL = DEFAULT if the named
property is not specified in OPTIONS. For example

val = **spoptimget**(opts, 'Maximize', 'off');

returns val = 'off' if the Maximize property is not specified in opts.

See also SPOPTIMSET, SPCOMPSEARCH, SPFMINSEARCH, SPCGSEARCH,
SPMULTISTART

