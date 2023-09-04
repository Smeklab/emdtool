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

### .**f** - supply frequency

### .**maxIter** - maximum number of Newton iterations

### .SimulationParameters/**maximum_damping_iterations** is a property.

### .SimulationParameters/**maximum_regular_iterations** is a property.

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


