---
title : Annotable
parent: API
grand_parent : Documentation
---
# Summary for: **Annotable**  < handle

## Class summary

Annotable Base class for annotable geometries.

This class is intended for adding explanations and illustrations,
here called 'annotations' to geometries and similar, and then
visualizing them when desired

## Properties

### .Annotable/**annotations** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_annotation** Add an annotation.

add_annotation(this, annotation)

### .**dimensions_example** Example geometry.

Returns an example geometry. Intended for visualizing and
documenting dimensions. Actually functionality would be
subclassed; the [Annotable](Annotable.html) base class implementation returns
empty.

### .Annotable/**plot_annotated_geometry** is a function.
plot_annotated_geometry(this, varargin)

### .**plot_annotations** Plot annotations.

plot_annotations(this)


