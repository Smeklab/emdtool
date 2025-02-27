---
layout: default
title: Skewing in EMDtool
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Skewing in EMDtool

Significant chunks of EMDtool functionality makes some assumptions on the meshes used:
* Radial-flux geometries are origin-centric with their clockwise boundary aligned at `y=0`
* Linear and axial-flux geometries are aligned at `x=0`, with the mesh extending towards the negative direction `x<0`

Some models seem to violate these assumptions, such as:
* Models of e.g. magnetic gears with angular offsets between components, typically over multiple airgaps
* Radial flux with multiple slices, to be visualized at non-origin-centric positions
* Sliced models with skewing

To make things work, the recommended approach right now is to _mesh_ the models with the compliant approach suggested earlier, and then take care of the non-complian aspects one level up:
* Adding a corresponding bias angle inside `motor.get_AGmatrix`
* Suitable translate and/or rotate the model coordinates before plotting (`motor.to_plot_frame` apart from some legacy implementations).

For a comprehensive example, see the [`RFModelWithSkew`](../../api/RFModelWithSkew.html) class.