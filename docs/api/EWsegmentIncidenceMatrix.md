---
title : EWsegmentIncidenceMatrix
parent: API
grand_parent : Documentation
---
# Summary for: **EWsegmentIncidenceMatrix**

**EWsegmentIncidenceMatrix** Indicence matrix from phase to end-winding
segment.

L = **EWsegmentIncidenceMatrix**(Q, W, Nturns), where
W = winding configuration matrix
Nturns = number of turns per slot and phase

Function returns the incidence matrix L with the entries
L(r,m) = n, where
r = number of end-winding segment = segment between slots r and r+1
m = number of phase
n = number of turns per ew-segment and phase.

NOTE: only works for two-layer windings, for now.

(c) 2018 Antti Lehikoinen / Aalto University

