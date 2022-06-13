---
title : Rectangle
parent: API
grand_parent : Documentation
---
# Summary for: **Rectangle**  < [Surface](Surface.html)

## Class summary

Rectangle Helper class for rectangular surfaces.

r = Rectangle.from_center(x, y, w, h, varargin)

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Rectangle** Helper class for rectangular surfaces.

r = Rectangle.from_center(x, y, w, h, varargin)
Documentation for Rectangle/Rectangle
helpwin Rectangle

### .**from_center** Rectangle from center coordinates.

r = from_center(x, y, w, h) returns a rectangular [Surface](Surface.html) centered at
(x, y), with a width of `w` and a height of `h`.

The following key-value pairs can be given as additional arguments:
* 'lcar' : Characteristic mesh length at corner points. Defaults to -1.
* 'angle' : Inclination of rectangle with respect to the x-axis.
Defaults to 0.
Documentation for Rectangle.from_center
doc Rectangle.from_center


