---
title : slotConnectionMatrix_1
parent: API
grand_parent : Documentation
---
# Summary for: **slotConnectionMatrix_1**

**slotConnectionMatrix_1** loop matrix for a single slot.

C_k = **slotConnectionMatrix_1**(N_conductors, N_series, W, k)

The function returns the connection/loop matrix for the slot k, having N_conductors
in total, N_series of which are connected in series, based on the winding
connection matrix W.

With C_k, the currents flowing in the conductors of slot k can be
obtained as I_slot = C_k * I_free

Use **slotConnectionMatrix_1**(N_conductors, N_series, W, k, k_tp)
to transpose strands from slot to slot in different ways.

Copyright (c) 2016 Antti Lehikoinen / Aalto University

