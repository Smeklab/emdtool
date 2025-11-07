---
title : FluidBarrierRotor
parent: API
grand_parent : Documentation
---
# Summary for: **FluidBarrierRotor**  < [SynRotorBase](SynRotorBase.html)

## Class summary

FluidBarrierRotor Fluid barrier rotor.

A synchronous reluctance (SynRM / SynRG) rotor template, with the
barriers defined according to the fluid approach, i.e. the barrier
edges following the flux lines as they would flow in a solid
homogeneous rotor of linear material.

Dimensions:
* leff : stack length
* p : number of pole-pairs
* Rout : outer radius
* Rin : shaft radius

Barrier dimensions:
* w_guide : array of flux guide thicknesses at the symmetry axis,
starting from the innermost (closest to shaft) one
* w_barrier : array of barrier thicknesses at the symmetry axis, or
a single scalar for uniform thicknesses.
* w_bridge_out : approximate thickness of the iron bridge between
the flux barrier and the rotor OD. Either a scalar value or an
array of size numel(w_guide).
* barrier_fillet_radius : Maximum allowed value for the radius of
the fillet between the barrier and the outer bridge.

Materials:
* rotor_core_material : Core material
* rotor_stacking_factor : Rotor stacking factor
* shaft_material : shaft material

The barriers are constructed with the FluidBarrier package, with
FluidBarrier.FluidBarrierConstructor.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .FluidBarrierRotor/**d_axis_angle** is a function.
a = d_axis_angle(~)

### .FluidBarrierRotor/**parse_characteristic_lengths** is a function.
parse_characteristic_lengths(this)


