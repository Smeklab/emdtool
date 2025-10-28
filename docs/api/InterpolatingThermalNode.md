---
title : InterpolatingThermalNode
parent: API
grand_parent : Documentation
---
# Summary for: **InterpolatingThermalNode**  < [ThermalNode](ThermalNode.html)

## Class summary

InterpolatingThermalNode Linearly-dependent node.

The temperature of an InterpolatingThermalNode is fixed to a linear
combination of the temperatures of one or more other nodes in the
thermal model as follows:

T(this) = c(1)*T(n(1)) + c(2)*T(n(2)) + ...

where
c = this.coeffs, real values
n = this.nodes, [ThermalNode](ThermalNode.html) objects.

## Properties

### .**coeffs** Array of multipliers.

### .**nodes** Other nodes.

An array of 1 or more [ThermalNode](ThermalNode.html) objects that define the
temperature of `this`.


## Methods

Class methods are listed below. Inherited methods are not included.


