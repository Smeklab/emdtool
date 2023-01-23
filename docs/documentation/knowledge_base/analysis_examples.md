---
layout: default
title: Analysis examples
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Common analysis cases

This page briefly describes the typical `EMDtool` analysis types and cases.

# Non-stepping analysis

## Torque curve vs pole angle

This case can be found from the EMDtool examples folder, and computes an approximate torque curve vs the pole angle using a fixed
current density. For reference, a pole angle of 90 degrees corresponds to id = 0.

The example analysis script works by keeping the rotor position fixed and rotating the stator current vector with respect to it. As no stepping 
is performed, this analysis is sensitive to the torque ripple. 

## Torque curve vs slip

This is an asynchronous-machine equivalent to the above, also found in EMDtool examples. The model is simulated in the frequency domain, using 
either an imposed current or voltage, with a varying slip.

The rotor position is obviously fixed, and the analysis sensitive to the torque ripple.

# Stepping analysis

# Grid analysis