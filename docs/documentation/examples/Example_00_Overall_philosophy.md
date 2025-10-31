---
layout: default
title: Example 00 Overall philosophy
parent: Examples
grand_parent : Documentation
---

# Example 0 \- Overall philosophy

 **`Goal:`** `this “zeroth” example introduces you to EMDtool’s design principles — how data, geometry, and simulations relate to each other — before running any actual computations.`


`This example does nothing and performs no calculations. It simply summarizes some important EMDtool features and characteristics, benefits and drawbacks.`

# EMDtool is Class\-Based

EMDtool is built primarily around *classes* — MATLAB’s object\-oriented programming (OOP) system. This design keeps models modular and extendable while minimizing repetitive code. Although it adds some learning curve (especially when writing custom extensions), using built\-in features requires only light OOP awareness.


Below, you can find some important examples of EMDtool classes within a typical simulation or analysis workflow, and also what are *not* classes.


 *Note: Strictly speaking, you work with* ***objects*** *— instances of particular classes. In the following, “object” and “class” may be used somewhat interchangeably for simplicity.* Mea culpa.

## Geometries and Models

EMDtool is based on geometry templates \- classes for representing a 'regular' slotted stator or a V\-style IPM rotor. These are all subclasses of the [GeoBase](https://www.emdtool.com/api/GeoBase.html) class.


An actual motor or generator is then represented by a *model* class, a subclass of the [MotorModelBase](https://www.emdtool.com/api/MotorModelBase.html) base class.


Thanks to this organization, you can mix and match different stators and rotors together.

## Simulations and Results

Actual simulation functionality is then handled by the methods (functions of an object) of a [MagneticsProblem](https://www.emdtool.com/api/MagneticsProblem.html) object, returning a [MagneticsSolution](https://www.emdtool.com/api/MagneticsSolution.html) object containing the solution data. The `MagneticsProblem` object *contains* your motor model (and has received it as an input) — it uses it internally to assemble and solve the magnetic system.

## Some Input Data

Some important classes that are used as input dimensions \- fields of the dimensions struct \- include:

-  [Material](https://www.emdtool.com/api/Material.html) objects for representing materials 
-  [Winding specifications](https://www.emdtool.com/api/PolyphaseWindingSpec.html) objects for specifying windings 
-  [SimulationParameters](https://www.emdtool.com/api/SimulationParameters.html) objects for defining simulation settings like supply frequency 
# What is Not Class\-Based

Not everything in EMDtool is object\-oriented. Some data types remain simple MATLAB structures or arrays for flexibility and speed.

## Input Dimensions

Many EMDtool classes \- geometries, models, and lower\-level objects \- have a property called *dimensions*. The dimensions are (for now) stored inside a MATLAB  *structure,* containing all the necessary parameters for defining said object.


Matlab structures are not classes. Thus, modifying some property (say the outer radius of a stator) *after* having passed those dimensions to a stator object, will not influence the dimensions that the stator sees.

## Many Lower\-Level Outputs

For now, many EMDtool functions return their results in lower\-level formats: numbers, arrays, and structures.


To keep things confusing, some do return objects.

## Most Low\-Level Data

Most low\-level data is is handled as arrays and matrices for speed.

# EMDtool is Built Around Motor Terminology

The EMD in EMDtool stands for Electric Motor Design. Correspondingly, there are some assumptions that may not make in all applications. 

-  The input dimensions must define the number of pole\-pairs *p*, as this is used by the `MagneticsProblem` class, to calculate a *rotor angle* from the electrical angle (in turn computed from the time\-stamp value and the supply frequency). This might not make sense for magnetic gears, flux modulators, or similar designs with multiple rotating components. In these cases, rotation and similar must be subclassed accordingly, and the *.p* dimension just needs to be agreed to mean something. 
-  The SimulationParameters class defines a *supply frequency* *f*. Again, this might not make sense for designs with multiple feed systems. In this case, the supply frequency must be understood as some interesting frequency, that is then used to e.g. compute the time\-step length. 
# What Sees What, Exactly?

For a typical user, an important question is 'If I modify *this*, will it influence *that*?'. Generally, many EMDtool classes copy their input data at construction time, so later changes to the original structures won’t propagate automatically. 


To stay safe, you are free to modify data (dimensions, parameters, whatever) **before** you give it **as an argument** to anything else. Meaning, you can change the stator dimensions before you have created a stator object, and you can change simulation parameters before you have ran a [simulation using](https://www.emdtool.com/api/SimulationParameters.html) those parameters. 


You **shouldn't modify the data** **after** you have given it as an argument to something else.


As a summary:


✅ **Safe:** Modify data *before* passing it as an argument.


❌ **Unsafe:** Modify data *after* it has been given to another object.


This rule can sometimes be broken, but the behaviour is inconsistent.

# Many Classes Know Their Parent

Many EMDtool objects hold a reference to their *parent* object. For example, a `Stator` object knows the `MotorModel` it belongs to.


This enables automatic updates or queries (e.g., fetching material data or geometry scales) without explicitly passing references everywhere.


However, users should not rely on this for modifying data upward — it’s mainly for read\-only context.



[**NEXT UP**: Example 01 Setting up a Model](Example_01_Setting_up_a_Model.html)