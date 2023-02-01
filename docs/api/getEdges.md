---
title : getEdges
parent: API
grand_parent : Documentation
---
# Summary for: **getEdges**

**getEdges** returns the edge definition.

[edges, e2t, t2e] = **getEdges**(t)
when given a 3xNe triangulation t, the function returns the following
arrays
edges = 2xNedges array, containing the start- and end-nodes of each
edge in the mesh (on first and second row respectively)
e2t = a 2xNedges array, containing the triangles that the mesh belongs
to
t2e = a 3xNe array, containing the edges that each triangle has

Copyright (c) 2016 Antti Lehikoinen / Aalto University,
based on the work of Antti Hannukainen and Mika Juntunen, 3.11.2005

