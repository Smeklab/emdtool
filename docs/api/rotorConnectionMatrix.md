---
title : rotorConnectionMatrix
parent: API
grand_parent : Documentation
---
# Summary for: **rotorConnectionMatrix**

**rotorConnectionMatrix** returns the loop matrices for the rotor cage.

[Lr, Z_ew, L_ew] = rotorCircuitMatrix(Qr, N_sec, p)
returns the rotor loop matrix Lr, the end-ring impedance matrix Z_ew, and
the end-ring loop matrix L_ew.
Use rotorCircuitMatrix(Qr, N_sec, p, Zbe) or
rotorCircuitMatrix(Qr, N_sec, p, Zbe, Zring) to supply the bar-end and/or
end-ring segment impedances. Values not given are assumed zero.

Copyright (c) 2016 Antti Lehikoinen / Aalto University

