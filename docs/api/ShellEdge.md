---
title : ShellEdge
parent: API
grand_parent : Documentation
---
# Summary for: **ShellEdge**  < handle

## Class summary

ShellEdge Convenience class for handling shell edges.

In this context, *shell edges*  are with duplicate nodes on their left
and right sides, with empty space between. They are mainly intended
for modelling thin gaps with no material contact (mechanical, magnetic,
or thermal), with or contact modelled by special means.

this = ShellEdge(msh, nodes) initializes a shell edge, from the given
set of nodes (must be ordered correctly).

## Properties

### .**domain_to_shellify** Domain to shellify, optional.

See `this.shellify`.

### .**edges** Ordered edges.

The edges, in order, making up this edge.

### .**elements_to_shellify** Elements to shellify.

See `this.shellify`.

### .**msh** Mesh.

The parent [SimpleMesh](SimpleMesh.html) object.

### .**nodes** Ordered nodes.

The nodes, in order, making up this shell edge.

### .**skip_ends** Skip end-nodes?

Defaults to `true`.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**get_left_and_right_elements** Get elements bordering the shell edge.

[left_els, right_els] = get_left_and_right_elements(this)

Note: the concept of 'left' and 'right' is somewhat arbitrary for now.

### .**plot** Plot nodes belonging to this.

plot(this, varargin), corresponding to
`this.msh.plot_nodes(this.nodes, varargin{:})`.

### .**shellify** Shellify edge.

shellify(this) performs the following steps:
** Duplicate `this.nodes`. The first and last node are ** *not**
duplicated unless `this.skip_ends` is `false`.
* An attempt is made to update periodic boundary definitions. Not
guaranteed to work.
* Update element definitions.
* If `this.elements_to_shellify` is not empty, these element
definitions are updated.
* Otherwise, the elements of the domains in
`this.domain_to_shellify` are updated.


