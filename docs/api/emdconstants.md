---
title : emdconstants
parent: API
grand_parent : Documentation
---
# Summary for: **emdconstants**

## Class summary

emdconstants is a class.
obj = emdconstants

## Properties

### .**insulation_thickness_per_volt** - from 100 Volts/0.001 inch rule of thumb

### .**laser_cutting_tolerance** Core lamination cutting tolerance (Grade).

IT9:
https://en.wikipedia.org/wiki/IT_Grade

Final product should be between

specified size + [-tolerance, tolerance]

### .**magnet_manufacturing_tolerance** PM manufacturing tolerance (m).

The final magnet should be within

specified size + [-tolerance, 0], or
specified size + [0, tolerance], or
specified size + [-tolerance, tolerance]

### .**mu0** - vacuum permeability


## Methods

Class methods are listed below. Inherited methods are not included.

### .**BHmax_to_Br** MGOE to T.

### .**BHmax_to_Br_SI** kJ/m^3 to T.

### .emdconstants.**Oe_to_A_per_m** is a function.
H = emdconstants.Oe_to_A_per_m(O)

### .**emdconstants**/emdconstants is a constructor.
obj = emdconstants
Documentation for emdconstants/emdconstants
doc emdconstants

### .**uOhmcm_to_ohmm** Resistivity conversion.

Converts micro-Ohm cm to Ohm m.


