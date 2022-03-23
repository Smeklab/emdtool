---
title : SteelLibrary
parent: API
grand_parent : Documentation
---
# Summary for: **SteelLibrary**  < handle

## Class summary

SteelLibrary Static class for creating electrical steel Material
objects.

Data referenced from Tata Steel website at some
point, see https://www.tatasteeleurope.com/ts/engineering/products/electrical-steel

Usage:

mat = SteelLibrary.create( grade_name )

where grade_name = string or char. See SteelLibrary.grades for available
grades.

mat = SteelLibrary.create(grade_name, 'plot_fit', true)

to also plot the resulting loss fit

## Properties

### .SteelLibrary.**fname** is a property.

### .SteelLibrary.**grades** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .loading data

### .SteelLibrary/**fit_losses** is a function.
coeffs = fit_losses(this, B, fs, Ws, varargin)

### .SteelLibrary.**get_grades** is a function.
g = SteelLibrary.get_grades

### .SteelLibrary/**parse_data_from_Excel** is a function.
[B, H, Ws, fs] = parse_data_from_Excel(this, gradename)


