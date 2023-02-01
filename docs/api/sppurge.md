---
title : sppurge
parent: API
grand_parent : Documentation
---
# Summary for: **sppurge**

SPPURGE   Purge sparse grid data
Z = SPPURGE(Z)  Marks indices that have corresp.
hierarchical surplus values larger than the default
drop tolerance [0, 100*eps]. The SPPURGE function
returns the same sparse grid interpolant data z, but
enhanced by a field purgeData that is used by
SPINTERP to only consider the marked indices in the
interpolation process, thus saving computing time.

Z = SPPURGE(Z, OPTIONS)  OPTIONS must be an options
structure generated with SPSET. Only the value of
the DropTol property is used, which enables the user to
set any absolute and relative drop tolerance to be used
by the purging algorithm.

See also: SPSET

