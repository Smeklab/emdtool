---
title : compute_inductances_static_averaging
parent: API
grand_parent : Documentation
---
# Summary for: **compute_inductances_static_averaging**

**compute_inductances_static_averaging** Inductanc computation.

[Phi_PM, LM, R, LM_ew] = **compute_inductances_static_averaging**(problem,
idq, angles, key, val), where

* problem : a MagneticsProblem

* idq : a 2x1 vector of the operating point (id, iq)

* angles : a vector of electrical angles (radians) to average/compute
the results over.

Key-value pair arguments:

* mode : "frozen permeability" (default) or "differential"

* use_existing : use existing solution? See next bullet. Default false.

* solution_to_use : "static" (default) or "stepping"

* transform_to_star : transform parameters to equivalent star connection.
Default true.

* average_results : average inductances and flux linkages over angles.
Default true.

