---
title : Triangle1
parent: API
grand_parent : Documentation
---
# Summary for: **Triangle1**  < [ElementBase](ElementBase.html)

## Class summary

Triangle1 is a class.
obj = Triangle1

## Properties

### .Triangle1.**curvature_order** is a property.

### .**edge_definitions** Edge definitions

Definition of edges in terms of nodes. Array of size
number_of_edges x nodes_per_edge.

Each row defines the nodes (of reference element) nodes that
define a single edge, in order
Help for Triangle1.edge_definitions is inherited from superclass ElementBase

### .**is_isoparametric** Boolean

True if element is isoparametric
Help for Triangle1.is_isoparametric is inherited from superclass ElementBase

### .**reference_element** Definition for reference element.

Number of nodes x number of dimensions array, defining the
coordinates of nodes in the reference element.
Help for Triangle1.reference_element is inherited from superclass ElementBase

### .**reference_element_center** Center of reference element.

Coordinates.
Help for Triangle1.reference_element_center is inherited from superclass ElementBase

### .**type** Type string

Identifier string
Help for Triangle1.type is inherited from superclass ElementBase

### .**unroll_order** Ordering of nodes

Order for reference element nodes such that a meaningful
(counter-clockwise?) polygon is formed of them
Help for Triangle1.unroll_order is inherited from superclass ElementBase


## Methods

Class methods are listed below. Inherited methods are not included.

### .**Triangle1**/Triangle1 is a constructor.
obj = Triangle1
Documentation for Triangle1/Triangle1
doc Triangle1

### .**triplot** Plot elements

triplot(this, element_indices, varargin)

Use element_indices = [] to plot all.


