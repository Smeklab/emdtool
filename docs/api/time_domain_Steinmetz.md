---
title : time_domain_Steinmetz
parent: API
grand_parent : Documentation
---
# Summary for: **time_domain_Steinmetz**

**time_domain_Steinmetz** Iron losses from time-domain Steinmetz model.

[Pmean, data] = **time_domain_Steinmetz**(solution, key, val) with the
following optional key-value pairs:

* 'plotting_on' : plot loss densities? Default false.

* 'remove_DC' : Remove DC-component of flux density before computing
losses? Options: false - no removal / 'rotor' - only remove from rotor
elements (motor.rotel) / 'all' remove from all elements.

Return values: total losses (time-average) and a loss data struct with
the following fields:

* P_total : average total losses

* P_total_time : total losses versus time (solution.ts)

* P_hysteresis : total hysteresis losses

* P_eddy : total eddy-current iron losses

* P_excess : total excess losses.

* P_rotor : total losses in rotor (in elements motor.rotel)

* P_hysteresis_rotor : total hysteresis losses in rotor

* P_eddy_rotor

* p_hysteresis_elementwise : vector of elementwise hysteresis loss
density (W/kg)

* p_eddy_elementwise

* p_excess_elementwise

See Material.iron_loss_density_**time_domain_Steinmetz** for details on the
calculation approach.

