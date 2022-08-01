---
title : BlockCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **BlockCircuit**  < [Circuit](Circuit.html)

## Class summary

BlockCircuit Circuit for single massive conductors.

The BlockCircuit class is intended for modelling single massive
conductors, such as permanent magnets, that are **not**  connected to
other conductors outside the 2D FE model (like a rotor cage would
be).

The eddy-current distribution inside each [Conductor](Conductor.html) in a `BlockCircuit`
is modelled by the 2D AVI formulation, enforcing a zero net axial
(out-of-plane) current over each conductor. Naturally, several
Conductors can be added to a single circuit, in which case the zero
not current condition is enforced on each of them separately.

NOTE: For permanent magnets in particular, please check out the
[ExtrudedBlockCircuit](ExtrudedBlockCircuit.html) class that also takes in consideration the
finite axial length of a conductor, using a hybrid 2D-3D approach.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .BlockCircuit/**parse_v11** is a function.
[conductors, names] = parse_v11(this)


