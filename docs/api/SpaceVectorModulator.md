---
title : SpaceVectorModulator
parent: API
grand_parent : Documentation
---
# Summary for: **SpaceVectorModulator**  < [Modulator](Modulator.html)

## Class summary

SpaceVectorModulator Prototype multiphase space vector modulator.

Based on the paper 'Multilevel Multiphase Space Vector PWM Algorithm'

this = SpaceVectorModulator(UDC, fs)

Supports an arbitrary phase count and number of levels >=2

## Properties

### .**Mave** Averaging matrix for 3rd harmonic injection.

Third harmonic injection is realized with the formula
`Delta = (max( this.Mave.*Uphase_ref,[],1 )' + min(this.Mave.*Uphase_ref,[], 1)') / 2;`
`Uphase_with_injection = Uphase_ref - this.Mave*Delta;`

By default,
`this.Mave = ones(this.phases, 1);`
but setting a different matrix can be used to account for e.g.
two independent star points in a 6-phase system.

### .**UDC** DC-link voltage

### .**Uref** Target voltage in dq-frame.

### .**f** Fundamental frequency.

### .**fs** Switching frequency.

### .**levels** Number of voltage levels.

Defaults to 2.

### .**phases** Number of phases.

Defaults to 3.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**SpaceVectorModulator** Prototype multiphase space vector modulator.

Based on the paper 'Multilevel Multiphase Space Vector PWM Algorithm'

this = SpaceVectorModulator(UDC, fs)

Supports an arbitrary phase count and number of levels >=2
Documentation for SpaceVectorModulator/SpaceVectorModulator
doc SpaceVectorModulator

### .**recompute** Recompute switching times for the next switching period.

recompute(this, t)


