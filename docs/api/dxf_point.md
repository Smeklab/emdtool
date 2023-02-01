---
title : dxf_point
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_point**

DXF_POINT Store points in DXF file.
DXF_POINT(FID, X, Y, Z) writes 3D points into DXF file.
FID is a valid DXFLIB structure created with DXF_OPEN routine.
X, Y and Z are vectors or matrices of the same size containing
coordinates of points in 3D space.

DXF_POINT(..., COLOR) where COLOR is either n-by-1 ACI color vector or
n-by-3 RGB color matrix allows to specify color for each individual
point.

See also DXF_OPEN, DXF_CLOSE, DXF_RGB2ACI, DXF_ACI2RGB, DXF_POLYLINE.

