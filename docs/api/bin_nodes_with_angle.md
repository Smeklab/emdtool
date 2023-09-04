---
title : bin_nodes_with_angle
parent: API
grand_parent : Documentation
---
# Summary for: **bin_nodes_with_angle**

**bin_nodes_with_angle** Bin mesh nodes based on angular coordinate.

incidence = **bin_nodes_with_angle**(msh, nodes, angles) bins the given nodes
of the mesh `msh` based on their angular coordinate, into the closest bin
given in `angles`.

Incidence is an array of `numel(nodes)`, with
incidence(k) = m if the angular coordinate of the point
`msh.p(:, nodes(k))` is closest to `angles(m)`

