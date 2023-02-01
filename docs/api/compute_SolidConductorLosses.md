---
title : compute_SolidConductorLosses
parent: API
grand_parent : Documentation
---
# Summary for: **compute_SolidConductorLosses**

**compute_SolidConductorLosses** Compute losses in solid conductor.

If more than one electrical period has been simulated, the losses are
only computed for the last.

Key-value pairs:

* 'axlims' : axis limits. Either a 1x4 vector, nan (let Matlab determine
limits), or [] to fit based on motor size (radial-flux only)

* 'Jlim' : current density color axis limit. [] to determine
automatically.

* 'steps' : vector of time-step indices to plot, e.g. 10:20.

* 'conductors' : vector of conductor indices to plot. Default all.

