---
title : ShortCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **ShortCircuit**  < [CircuitSource](CircuitSource.html)

## Class summary

ShortCircuit Source for modelling three-phase short-circuits.

ShortCircuit is a [CircuitSource](CircuitSource.html) class for modelling three-phase
short-circuits.

## Properties

### .**R_extra** Extra resistance, if any

An extra per-phase resistance for simulating braking resistors
and similar. Connected after the short. Default 0.

WARNING: The effect of parallel paths not yet considered.

### .**short_at** - instant of the short-circuit

### .**supply** General supply data to use before the short-circuit.

If `this.supply_before_short` is set to "terminal current",
`supply` must be an array of instantaneous phase currents,
corresponding to the time-stamps of the simulation to be run.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**ShortCircuit** Source for modelling three-phase short-circuits.

ShortCircuit is a [CircuitSource](CircuitSource.html) class for modelling three-phase
short-circuits.
Documentation for ShortCircuit/ShortCircuit
doc ShortCircuit


