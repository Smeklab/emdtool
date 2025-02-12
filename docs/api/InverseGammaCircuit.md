---
title : InverseGammaCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **InverseGammaCircuit**  < [IMEquivalentCircuit](IMEquivalentCircuit.html)

## Class summary

InverseGammaCircuit methods:
InverseGammaCircuit - is a class.
from_harmonic_solution - Initialize eq. circuit from solution.
from_summary - InverseGammaCircuit.from_summary is a function.

## Properties

### .InverseGammaCircuit/**Lm** is a property.

### .InverseGammaCircuit/**Ls** is a property.

### .InverseGammaCircuit/**Rr** is a property.

### .InverseGammaCircuit/**Rs** is a property.

### .InverseGammaCircuit/**f** is a property.

### .InverseGammaCircuit/**p** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**InverseGammaCircuit**/InverseGammaCircuit is a constructor.
obj = InverseGammaCircuit
Documentation for InverseGammaCircuit/InverseGammaCircuit
doc InverseGammaCircuit

### .**from_harmonic_solution** Initialize eq. circuit from solution.

this = from_harmonic_solution(solution)

The circuit parameters are defined with the following steps:

# Freeze permeability around given solution

# Compute total reactance at zero slip

# Compute leakage reactance at large negative slip

# Compute magnetizing reactance from the difference of total and leakage reactance

# Compute total BEMF at given slip. From it, compute the
magnetizing-branch voltage, from it the magnetizing current, and with
it the rotor current. Compute rotor resistance from rotor current and
magnetizing branch voltage. This value should of course be real; the
numerical error factor imag(Rr)/real(Rr) is displayed in the command
prompt to spot failed computations.

### .InverseGammaCircuit.**from_summary** is a function.
this = InverseGammaCircuit.from_summary(solution, summary)

### .InverseGammaCircuit/**torque_from_current** is a function.
T = torque_from_current(this, I, slip)

### .InverseGammaCircuit/**voltage_from_current** is a function.
U = voltage_from_current(this, I, slip)


