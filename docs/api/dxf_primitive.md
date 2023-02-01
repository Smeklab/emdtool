---
title : dxf_primitive
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_primitive**

DXF_PRIMITIVE Draw 3D primitives.
DXF_PRIMITIVE(FID, primitivetype, X, Y, Z) draws primitives at
coordinates specified by three vectors X, Y and Z. The primitive
may be of following type:
'box','+','triangle','sphere','tetrahedron'

DXF_PRIMITIVE(..., SIZE) where SIZE is the matrix of the same
size as X, Y or Z vectors allow to manipulate the size of each
primitive (by default all primitives are of size 1)

DXF_PRIMITIVE(..., SIZE, COLOR) where COLOR is m-by-1 ACI color vector
or m-by-3 RBG color matrix allows to draw every primitive with different
color.

REMARKS
Size of each primitive is approximately 1 meter in all directions.

See also DXF_MARKER

