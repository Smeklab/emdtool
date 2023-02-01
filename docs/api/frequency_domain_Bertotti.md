---
title : frequency_domain_Bertotti
parent: API
grand_parent : Documentation
---
# Summary for: **frequency_domain_Bertotti**

**frequency_domain_Bertotti** Compute iron losses with freq-domain Bertotti
model.

Call syntax:
[Ptot, data] = **frequency_domain_Bertotti**(solution, key, val) with the
following key-value pairs:

* 'plotting_on' : plot loss densities? Default false.

Return values: total losses (time-average) and a loss data struct with
the following fields:

* P_total : average total losses

* P_hysteresis : total hysteresis losses

* P_eddy : total eddy-current iron losses

* P_excess : total excess losses.

* P_rotor : total losses in rotor (in elements motor.rotel)

* p_hysteresis_elementwise : vector of elementwise hysteresis loss
density (W/kg)

* p_eddy_elementwise

* p_excess_elementwise

(c) 2018 Antti Lehikoinen / Smeklab Ltd

