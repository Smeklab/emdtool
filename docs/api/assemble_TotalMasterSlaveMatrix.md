---
title : assemble_TotalMasterSlaveMatrix
parent: API
grand_parent : Documentation
---
# Summary for: **assemble_TotalMasterSlaveMatrix**

**assemble_TotalMasterSlaveMatrix** elimination matrix for master-slave
couplings.

[PT, otherNodes_new] = **assemble_TotalMasterSlaveMatrix**(Ntot, P, otherNodes)
generates a Ntot x N mapping matrix, with N <= Ntot

Each of the matrices in the cell array P{1,:} defines a part of the
mapping.

Alternatively P{1,c} can be a 3xN sparse triplet array.

Optionally, P{2,:} and P{3,:} can contain index arrays for
permuting/shifting the rows and columns of the P-matrices, respectively.

Copyright (c) 2016 Antti Lehikoinen / Aalto University

