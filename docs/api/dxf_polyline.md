---
title : dxf_polyline
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_polyline**

DXF_POLYLINE Store lines in DXF file.
DXF_POLYLINE(FID, X, Y, Z) writes polylines into DXF file.
FID is valid DXFLIB structure created with DXF_OPEN routine.
X, Y and Z are matrices of the same size containing coordinates of
points for polylines. One separate line per column of matrix is
drawn.

See also DXF_OPEN, DXF_CLOSE.

