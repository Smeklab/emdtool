---
title : SimulationParameters
parent: API
grand_parent : Documentation
---
# Summary for: **SimulationParameters**

## Class summary

SimulationParameters Parameters for MagneticsProblem solutions.

## Properties

### .**N_periods** - number of electrical periods to simulate

### .**N_stepsPerPeriod** - number of time-steps per electrical period

### .**alpha2** - time-stepping weight factor (2=implicit Euler, 1=trapezoidal, ]1,2[ = hybrid)

### .**convergence_tolerance** Newton convergence tolerance.

Newton iterations are performed until the relative residual, i.e. the norm
of the Newton residual divided by max(norm(load_vector), 1) is strictly smaller
than the convergence tolerance.

### .**f** - supply frequency

### .**maxIter** - maximum number of Newton iterations

### .**maximum_damping_iterations** Maximum number of damping iterations.

Number of damping iterations to perform for each Newton step (after the
aforedescribed number of regular steps). On each damping step, the step size
is halved, until the residual norm strictly decreases or the maximum number is
reached.

### .**maximum_regular_iterations** Number of maximum regular iterations.

The maximum number of pure-Newton steps to perform, with the full step size.
The count restarts for each time-step, obviously.

### .**rel** - relaxation factor for iterations, default = 1 (no relaxation)

### .**rotorAngle** - rotor angle (bias for stepping analysis, set of angles for static)

### .**silent** - display progress in command line, true/false

### .**slip** - slip

### .**ts** - time-step time-stamps


## Methods

Class methods are listed below. Inherited methods are not included.

### .default parameters
Documentation for SimulationParameters/SimulationParameters
doc SimulationParameters

### .SimulationParameters/**dispf** is a function.
dispf(this, varargin)

### .SimulationParameters/**miscpar** is a function.
p = miscpar(this, name)


