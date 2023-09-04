---
title : sortSegmentEdges
parent: API
grand_parent : Documentation
---
# Summary for: **sortSegmentEdges**

**sortSegmentEdges** sorts nodes of circumferentially.

n = **sortSegmentEdges**(p, e) sorts the nodes 'e' according to their angular
coordinate comptued according to atan2. Nodes with < 0 are flipped with
+= 2pi.

n = **sortSegmentEdges**(p, e, true) to instead begin the sorting from a
non-zero angle, or something.

(c) 2018 Antti Lehikoinen / Smeklab

