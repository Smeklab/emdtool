---
title : CageCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **CageCircuit**  < [Circuit](Circuit.html) & [SliceableCircuit](SliceableCircuit.html)

## Class summary

CageCircuit methods:
CageCircuit - is a class.
finalize_matrices - Set matrices, etc.
get_loop_matrix - TODO generalize dimensions
list_possible_bar_numbers - List possible bar numbers.
merge_circuit_from_another_slice - CageCircuit/merge_circuit_from_another_slice is a function.

## Properties

### .CageCircuit/**broken_bars** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**CageCircuit**/CageCircuit is a constructor.
obj = CageCircuit
Documentation for CageCircuit/CageCircuit
doc CageCircuit

### .CageCircuit/**bar_currents** is a function.
I = bar_currents(this, solution)

### .**finalize_matrices** Set matrices, etc.

### .CageCircuit/**get_EW_impedance_matrix** is a function.
Z = get_EW_impedance_matrix(this)

### .CageCircuit/**get_EW_inductance_matrix** is a function.
X = get_EW_inductance_matrix(this)

### .TODO generalize dimensions

### .**list_possible_bar_numbers** List possible bar numbers.

Qr = list_possible_bar_numbers(p, Qs) returns a list of possible bar
counts for a given number of pole-pairs `p` and the number of stator
slots `Qs`. The list is computed according to the conditions in the book
'Design of Rotating Electrical Machines' by Pyrhönen et al., and may not
reflect the current best-practices for inverter-fed machines.

### .CageCircuit/**loop_currents** is a function.
I = loop_currents(this, solution)

### .CageCircuit/**merge_circuit_from_another_slice** is a function.
merge_circuit_from_another_slice(this, another_circuit)


