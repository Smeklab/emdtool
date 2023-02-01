---
title : statorConnectionMatrix
parent: API
grand_parent : Documentation
---
# Summary for: **statorConnectionMatrix**

**statorConnectionMatrix** returns the stator loop matrix.

Basic call syntax
Cs = **statorConnectionMatrix**(W, N_conductorsPerSlot, N_series)
where W is the winding configuration matrix. Use
Cs = **statorConnectionMatrix**(W, N_conductorsPerSlot, N_series, transp)
to specify transposition of conductors between slots. See the function slotConnectionMatrix_1
for available transposition types.

Copyright (c) 2016 Antti Lehikoinen / Aalto University

