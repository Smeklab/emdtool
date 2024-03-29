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

## Transient stepping

In transient stepping, the feedback from the time-derivatives into the field solution _is_ considered. Use cases include:

* Modelling voltage supply.
* Modelling the distribution of according to the voltage equations, using the `'terminal current source'` supply for `PolyphaseCircuit` objects. Use cases include delta-connected machines, or machines with multiple
parallel paths explicitly modelled, or machines with multiple wires in hand. 
	* **Note** In both of the above cases, the individual conductors can still be modelled as infinitely stranded, with uniform current density.
* Modelling eddy currents in massive solid conductors.

Transient analysis is performed in two steps:

1. Computing the initial conditions with the `.solve_harmonic` or `.solve_quasistatic` method of the `problem` object. The former is recommended for induction machines, 
while the latter is suitable for synchronous machines.

1. Solving the actual stepping with the `.solve_stepping` method.

### Supply methods

Transient stepping offers the full choice of possible excitation methods for [`PolyphaseCircuit`](../../api/PolyphaseCircuit.html) objects (typically a stator polyphase winding, or an excitation winding).
At the time of writing, the options include:

* 'uniform coil current' : uniform fixed current density. Please note that the current is specified **per coil**, i.e. the net terminal current may be a multiple of this due to the parallel paths.

* 'terminal current source' : specifies the net terminal current, letting any zero-sequence or circulating current component within the winding be solved according to the voltage equations. Please
note that the terminal current source is in virtual star, and thus imposes the specified _phase_ current minus any circulatory components.

* 'terminal voltage' : specifies the terminal voltage. Again, the source is connected in virtual star.

* 'circuit' : a [`CircuitSource`](../../api/CircuitSource.html) object. Arguably the most flexible analysis type. Not many built-in sources are yet included in `EMDtool`, but some options include the 
supply circuit for switched reluctance machines. One important feature of this supply type is that it allows switching from voltage supply to imposed current supply - usually imposed _zero_ current. This is
important for modelling e.g. said SRMs or BLDC machines driven with trapezoidal modulation, where 1 (or more) phase is generally open at a time.

# Post-processing analysis

## Demagnetization analysis

The Examples folder has a script for visualizing the demagnetizing field strength, based on an existing `MagneticsSolution` object. In case of stepping analysis, the element-wise worst-case is visualized.

**NOTE:** For now, the script doesn't handle models with different magnet grades too well. The field strength is computed correctly, but the relative values printed into the command line are respect to one 
intrinsic coervivity value only.

## Thermal analysis

Thermal analysis is something of a work in progress when it comes to `EMDtool`. While all the basic finite-element building blocks _are_ there, the analysis still remains to be nicely wrapped and formalized.

You can find an example script-based thermal analysis simulation in the built-in `EMDtool` examples, that may or may not work with the latest version. Please contact the author if it doesn't.

# Non-magnetics analysis

## Mechanical analysis



# Grid analysis