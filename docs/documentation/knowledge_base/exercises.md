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
1. Try different options:
	* The Halbach and/or six-phase options included in the geometry script.
	* Changing the rpm, pole angle, current density, etc.

## IPM machine with hairpin winding

## Understanding templates

This exercise helps you to get started with creating your own templates.

1. First, to get an idea of the end-result:
	1. Open and run the `Geometries/super_simple_solid_rotor_IM.m` script to initialize a motor model with the `SimpleSolidRotor` template.
	1. Run `Analysis scripts/torque_curve_vs_slip` to visualize the torque-slip behaviour and the flux density distribution at (approximately)
	maximum torque.
	
1. Next, type `open SimpleSolidRotor` on the Matlab command prompt to quickly open the main template file.
	* Note that the main file does not contain much functionality - all the magic happens in the `create_geometry` method in its external file.
	* Open this file next, easiest done via the Matlab GUI by clicking 'Open'
	
1. Read through the file to see if you understand it.

1. Next, try modifying the file. You can try, for example:
	* Visualizing some of the created points using e.g. `O.plot('text to plot', 'rx')`. 
		* **NOTE** In the main geometry script `Geometries/super_simple_solid_rotor_IM.m`, you'll have to move the rotor creation 
		line `rotor = SimpleSolidRotor(dim);` _after_ the `figure(1); clf; ...` line.
	* Manually creating an `Arc` object for the airgap arc, and then adding it to the `core_surface`:
		```matlab
		airgap_arc = Arc(Pout_cw, O, Pout_ccw);
		airgap_arc.name = 'n_ag';
		core_surface.add_curve(airgap_arc);
		```
	* Replacing the single airgap arc by two arcs of shorter span. For this purpose, you'll first have to create a suitable midpoint
	by e.g. `Pout_mid = Pout_cw.mirror(angle_pole/2);`. This actually _improves_ the template and makes it also work for two-pole geometries.

## Obtaining an operating point