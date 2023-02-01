---
title : square_unipolar
parent: API
grand_parent : Documentation
---
# Summary for: **square_unipolar**

**square_unipolar** Square unipolar wave.

y = **square_unipolar**(xs) returns a square unipolar wave for the interval
[0, 2*pi], getting the value 1 at the interval [-pi/2, pi/2] mod 2pi, and
zero elsewhere.

y = **square_unipolar**(xs, width) returns a similar wave, but with a custom
width of the pulse, centered around 0 rad.

