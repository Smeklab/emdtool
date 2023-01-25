---
layout: default
title: Analysis examples
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Common analysis cases

This page briefly describes the typical `EMDtool` analysis types and cases.

Note: please make sure you have read the [`EMDtool` briefly](../emdtool_briefly.html) about the general analysis workflow.

# Non-stepping analysis

## No-load flux density

This case can be found from the EMDtool examples folder, and visualizes the no-load flux density and airgap flux density waveform, using zero current density excitation for the stator.

## Torque curve vs pole angle

This case can be found from the EMDtool examples folder, and computes an approximate torque curve vs the pole angle using a fixed
current density. For reference, a pole angle of 90 degrees corresponds to id = 0.

The example analysis script works by keeping the rotor position fixed and rotating the stator current vector with respect to it. As no stepping 
is performed, this analysis is sensitive to the torque ripple. 

## Torque curve vs slip

This is an asynchronous-machine equivalent to the above, also found in EMDtool examples. The model is simulated in the frequency domain, using 
either an imposed current or voltage, with a varying slip. The rotor position is obviously fixed, and the analysis is thus sensitive to the torque ripple.

The script contains examples for both current (`phase_circuit.set_source('uniform coil current', Is)`) and voltage (`phase_circuit.set_source('terminal voltage', @Usource.U)`) supply. 
You will often find that the shape of the torque curve - the slip corresponding to the maximum torque - differs considerably between the two approaches. This is to be expected - users are recommended to
refresh their knowledge of the induction motor equivalent circuit to understand why this happens. (Hint: the magnetizing branch current is almost constant with voltage supply, but changes significantly with current
supply.)

## Demagnetization analysis

The Examples folder has a script for visualizing the demagnetizing field strength, based on an existing `MagneticsSolution` object. In case of stepping analysis, the element-wise worst-case is visualized.

**NOTE:** For now, the script doesn't handle models with different magnet grades too well. The field strength is computed correctly, but the relative values printed into the command line are respect to one 
intrinsic coervivity value only.

# Stepping analysis

## Static stepping

The oxymoronic-sounding 'static stepping' entails the following:

* The effect of time-derivatives is **not** included in the model itself. Therefore, static stepping cannot be used for induction machines or other problems where eddy-currents or other damping effects
are significant.
	* Static stepping _can_ yield as a result voltage waveforms, eddy-current losses, and similar - these results are computed in the post-processing stage. Naturally, the results won't be accurate whenever the
	coupling between the eddies and the field solution is significant. For an example, static stepping wouldn't work at all for induction machines, but often does a good job for PM losses.
* The rotor(s) can be rotating.
* The only possible (for now) excitation option is an imposed current density. Fixing the net current or terminal voltage would again require the coupling between time-derivatives and the field solution.

Static can be performed with `.solve_static` method of the [MagneticsProblem](../../api/MagneticsProblem.html).

## Actual stepping


	

# Non-magnetics analysis

# Grid analysis