---
layout: default
title: EMDtool Exercises
parent: Knowledge Base
grand_parent : Documentation
---

# Summary

On this page, you can find some exercises for getting familiar with `EMDtool`. You can find all the required files in the `Examples` folder
of your `EMDtool` download. Make sure you have unzipped the file.

# General instructions

* Before starting, it is recommended to clear your Matlab path and variables with `clear` and `restoredefaultpath`.
* Begin by adding the `EMDtool` folder to your Matlab search path, for instance by running the `example_init_and_readme.m` script.
* If you get stuck at any point, do check out the documentation either by typing e.g. `help SPM1` or `help MagneticsProblem.solve_static` in 
the Matlab command prompt, **or** by checking the online documentation (hint: the search bar on top of the documentation page can be a handy
tool).

# Exercises

## Simple surface-PM machine

This exercise demonstrates some simple yet powerful analysis options using a simple surface-PM machine geometry template.

1. Begin by running the `Geometries/toy_SPM.m` script to initialize the model. Please make sure to read through the script to see what 
is actually done.
1. Run `Analysis scripts/calculate_no_load_flux_density.m` to calculate and visualize the no-load flux density distribution along with the airgap
flux density.
1. Run `Analysis scripts/stepping_simulation_static.m` to run a sweep of magneto-static solutions over a range of rotor angles.
	* In the absence of strong damping by eddy-currents or other dynamics, this type of analysis is an extremely powerful too.
	* Read through the analysis script to see if you understand all the steps.
	* Pay particular attention to the `summary` structure returned by the `motor.results_summary` method. This structure contains a large amount of useful data in compact format.
1. Try different options:
	* The Halbach and/or six-phase options included in the geometry script.
	* Changing the rpm, pole angle, current density, and other simulation settings.


## IPM machine with hairpin winding

Next, we will see some transient analysis and winding eddy-current losses.

1. Initialize the model by running `Geometries/toy_winding_model_example.m`. Please make sure that the `winding_model` parameter on line 61 or so is set to `"hairpin"`.

1. Run `torque_curve_vs_pole_angle.m` using 10 Arms/mm^2 current density. Note the pole angle at which the torque peaks.
	* This computes the torque curve, using a single rotor position only. Thus, the accuracy of the results depends on the amplitude and phase of the torque ripple, and the rotor angle used.

1. Again run the static stepping script, setting `rpm` to 3000, and the pole angle to the one you noted just seconds ago. Also, set the current density to the same as at previous step.
	* After running the script, note the phase voltage d- and q-components in `summary.phase_circuit_data.U_phase_dq`
	* Does the torque agree? Why / why not?
	
1. Next, run `Analysis scripts/stepping_simulation_transient_simpler`. Make sure that:
	* The `rpm` is the same you used before with the static analysis.
	* Voltage supply is used: lines 33- are uncommented.
	* The supply voltage vector `Udq` is set to the phase voltage vector you obtained with static analysis.
	
1. See how the results differ from static analysis. Why?

1. Pay particular attention to the winding losses computed and visualized by the `[w, wdata] = phase_circuit.losses(stepping_solution, 'plotting_on', true, 'Jlim', 3*Jrms*[-1 1])` line.

1. Next, let's re-run the analysis using PWM supply. Near line 33, comment away the line `source = VoltageSource(motor);` and replace it with 
`modulator = SVPWM_Modulator(400, 6e3); source = VoltageSource(motor, modulator);`. This sets the model (or the phase winding of the stator, to be exact) to be fed with space-vector PWM controlled voltage, at
a switching frequency of 6 kHz and a DC-link voltage of 400 V.
	* It's a good idea to increase the number of time steps per period to 400 or so, to accurately catch the switching phenomena.
	* Pay particular attention to the iron losses, torque ripple and waveform, and phase circuit AC losses.
	
1. For extra ugliness, repeat the analysis with only 1 kHz switching frequency to see what happens.

## Understanding templates

## Obtaining an operating point
