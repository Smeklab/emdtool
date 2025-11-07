---
title : compute_SolidConductorLosses
parent: API
grand_parent : Documentation
---
# Summary for: **compute_SolidConductorLosses**

**compute_SolidConductorLosses** Compute losses in solid conductor.

Low-level method for loss computation in solid conductors.

[Pmean, P, J] = **compute_SolidConductorLosses**(winding, A, u, pars, varargin)
where,
* Pmean : mean losses ignoring the first 10 % of the simulated
time-steps
* P : per-conductor loss waveform. Due to differentiation, one
time-step shorter than the simulation
* J : cell array of per-conductor current densities for each conductor
and each time-step (minus 1). Evaluated at the mesh nodes belonging to
said conductors.

Key-value pairs:

* 'axlims' : axis limits. Either a 1x4 vector, nan (let Matlab determine
limits), or [] to fit based on motor size (radial-flux only)

* 'Jlim' : current density color axis limit. [] to determine
automatically.

* 'steps' : vector of time-step indices to plot, e.g. 10:20.

* 'conductors' : vector of conductor indices to plot. Default all.

* 'plot_geometry' : plot the rest of the geometry? Default true.

* 'plot_rms' : Plot rms current density instead.

