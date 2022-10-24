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

## Obtaining an operating point

## Understanding templates