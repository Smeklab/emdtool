---
title : AFmodel2
parent: API
grand_parent : Documentation
---
## Summary for AFmodel2
AFmodel2 methods:
AFmodel2 - is a class.
## PROPERTIES
* AFmodel2/axial_symmetry_sectors is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * AFmodel2/AFmodel2 is a constructor.
obj = AFmodel2
Documentation for AFmodel2/AFmodel2
doc AFmodel2

### * compute_torque Computes torque

T = compute_torque(this, solution)

Computes torque associated with the MagneticsSolution
solution.

T is of size number_of_airgaps x number_of_steps
Help for AFmodel2/compute_torque is inherited from superclass MotorModelBase

### * AFmodel2/get_rotated_nodes is a function.
p = get_rotated_nodes(this, rotorAngle)

### * AFmodel2/initialize_airgap is a function.
initialize_airgap(this)

### * AFmodel2.simple is a function.
motor = AFmodel2.simple(dim, stator, rotor)

