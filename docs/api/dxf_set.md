---
title : dxf_set
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_set**

DXF_SET Set property.
DXF_SET(FID, 'PropertyName', 'PropertyValue', ...) sets up property
in DXF file.

Properties:
'Layer' - Layer number, followed by a scalar value in a range 0-256.
'Color' - Current color, followed either by a scalar value in a range
1-255 (ACI color) or MATLAB color vector [R G B], where
R,G,B ranges 0-1. [0 0 0] is black, [1 1 1] is white,
[1 0 0] is pure red, [0 1 0] is pure green and [0 0 1] is
pure blue. Also ACI value 0 represent BYBLOCK and 256 represent
BYLAYER (currently both values are not used!)

Copyright 2010-2011 Grzegorz Kwiatek.
$Revision: 1.1.2 $  $Date: 2011.09.06 $

