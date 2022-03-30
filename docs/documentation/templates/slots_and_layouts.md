---
layout: default
title: Slot and Layout templates
parent: Templates
nav_order: 2
grand_parent : Documentation
math: mathjax2
---

# Slots and Layouts

The majority of time, you will be working with templates for different stator and rotor geometries. However, there are in addition a few optional convenience templates - slots and layouts.

# Slot templates

To understand the idea of, and the need for, a slot template, let us begin by considering the geometry of a typical stator, or the slotted rotor of a cage-induction motor. Also, let us only consider the smallest
symmetric region - a slot pitch.

In the physical sense, a typical slot is exactly what the name suggests - a groove punched or cut into the stator iron, beginning from the airgap and extending into the iron.

From the `EMDtool` point of view, the slot consists of one or more [`Surfaces`](../../api/Surface.html), with optional other surfaces inside them as `holes.` These surfaces each belong to a 
[`Domain`](../../api/Domain.html), each of which has a [`Material`](../../api/MaterialBase.html) associated with them.

TODO: pic