---
title : drawCurrentDensity
parent: API
grand_parent : Documentation
---
# Summary for: **drawCurrentDensity**

**drawCurrentDensity** draws current density.

h = **drawCurrentDensity**(msh, J, elements, plotArgs)
draws the current density J on the specified elements ([] = entire mesh).

If the mesh msh has a field "rotel" listing the rotor elements, the call
syntax can be **drawCurrentDensity**(msh, J, elements, rotorAngle, plotArgs)

Copyright (c) 2016 Antti Lehikoinen / Aalto University

