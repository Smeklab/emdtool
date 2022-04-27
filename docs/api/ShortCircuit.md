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

### .ShortCircuit/**get_jacobian** is a function.
[S, res] = get_jacobian(this, varargin)

### .ShortCircuit/**get_matrix** is a function.
S = get_matrix(this, problem, type, t, kstep, inds, Xprev)

### .ShortCircuit/**get_voltage** is a function.
U = get_voltage(this, circuit, problem, type, t, kstep, inds, Xprev)

### .ShortCircuit/**ndof** is a function.
n = ndof(this)

### .ShortCircuit/**set_circuit** is a function.
set_circuit(this, c)


