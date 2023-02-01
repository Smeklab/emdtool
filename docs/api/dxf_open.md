---
title : dxf_open
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_open**

DXF_OPEN Open DXF file.
Fid = DXF_OPEN(fname) opens DXF file for writing and writes the DXF
file header. The function returns the matlab structure 'Fid' with
various parameters used later by other drawing functions. One must
use this structure in the subsequent calls to drawing routines.

REMARKS
The assumed units are meters.

See also DXF_CLOSE

