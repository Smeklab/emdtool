---
title : plotgrid
parent: API
grand_parent : Documentation
---
# Summary for: **plotgrid**

PLOTGRID   Plot the sparse grid
PLOTGRID(N,D) Plots the sparse grid points of dimension D = 2
or D = 3 up to level N.

PLOTGRID(N,D,OPTIONS) Plots as above, but with default grid
type replaced by the grid type specified in OPTIONS, an
argument created with the SPSET function. See SPSET for
details.

H = PLOTGRID(...) Returns a vector of handles to the grid points
(useful for changing the look of the plotted grid).

