---
title : dxf_polymesh
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_polymesh**

DXF_POLYMESH Produce DXF polyface mesh from MATLAB patch data.
DXF_POLYMESH(FID, VERTICES, FACES) creates DXF data of polyface
mesh based on MATLAB patch data (vertices/faces).

DXF_POLYMESH(..., COLOR) allows to specify color for each FACE. COLOR
matrix should be of size(FACES,1) (i.e. you can specify only
per-face color).

See also DXF_POLYLINE.

