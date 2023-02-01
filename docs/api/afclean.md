---
title : afclean
parent: API
grand_parent : Documentation
---
# Summary for: **afclean**

AFCLEAN - Tries to purge an anonymous function of all non-essential workspace data

fh_clean=**afclean**(fh)

in:

fh: an anonymous funtion

out:

fh_clean: The same as fh, but with its workspace reduced to the
essential variables.

NOTE: Uses EVAL heavily and also the FUNCTIONS command whose behavior in
future versionTMW doesn't guarantee. Use at your own risk!

