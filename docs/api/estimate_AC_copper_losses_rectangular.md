---
title : estimate_AC_copper_losses_rectangular
parent: API
grand_parent : Documentation
---
# Summary for: **estimate_AC_copper_losses_rectangular**

estimate_AC_copper_losses AC loss calculation using a post-processing
approach.

Input arguments:
- sim : MachineSimulation object. Losses are computed from stepping
results.
- pars : SimulationParameters object.

Optional input arguments:
- plotting_on : Boolean. Should some results be plotted?

Returns:
- P : total AC losses (W) as a function of time.
- p : element-wise loss density as function of time
- ts : timestamps

(c) 2019 Antti Lehikoinen / Teraloop Oy

