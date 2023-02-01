---
title : dxf_marker
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_marker**

DXF_MARKER Draw a set of markers.
DXF_MARKER(FID, markertype, X, Y, Z) writes markers into DXF file.
FID is a valid DXFLIB structure created with DXF_OPEN routine.
markertype is a valid marker type of the following type:
'o' - circle,
'x' - x sign,
'+' - plus sign,
'^' - triangle.
X, Y and Z are vectors or matrices of the same size containing
coordinates of points in 3D space. The default size of marker is 1.

DXF_MARKER(..., SIZE) allows to specify size of marker(s). If SIZE is
a scalar, all markers have the same size according to the SIZE value
specified. If SIZE is a matrix of size equal to X, Y or Z, each
marker is rescaled according to corresponding SIZE value.

See also DXF_POLYLINE, DXF_POINT, DXF_PRIMITIVE.

