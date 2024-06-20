---
title : AverageTempNode
parent: API
grand_parent : Documentation
---
# Summary for: **AverageTempNode**  < [AmbientNode](AmbientNode.html)

## Class summary

MaxTempNode Dummy-like node for picking the maximum temperature.

A MaxTempNode takes no active role in the thermal solution, but does
display the maximum temperature over the elements assigned to it,
when so queried.

## Properties

### .**elements** Elements over which to pick the maximum temp.

### .AverageTempNode/**matrices** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .AverageTempNode/**assemble_matrices** is a function.
assemble_matrices(this)

### .AverageTempNode.**from_domain** is a function.
this = AverageTempNode.from_domain(name, domain)

### .**get_temperature** Node temperature.

T = get_temperature(this, solution) where
* solution : a `ThermalSolution` object.


