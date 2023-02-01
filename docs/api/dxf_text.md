---
title : dxf_text
parent: API
grand_parent : Documentation
---
# Summary for: **dxf_text**

DXF_TEXT Print text.
DXF_TEXT(FID, X, Y, Z, Label) writes text at locations specified by
coordinates (X,Y,Z). Label is a cell array containing labels or
numeric array.

DXF_TEXT(..., 'PropertyName',PropertyValue) allow to set up various
text properties. The properties can also be se using DXF_SET routine.
In second case, the changes to the text properties are persistent and
the following calls to DXF_TEXT routine will use these properties as
defaults.

Available properties:

'TextHeight' - height of text.
'TextRotation' - rotation of text.
'TextThickness' - thickness of text.
'TextAlignment' - horizontal alignment (0-2).
'TextVAlignment' - vertical alignment (0-3).
'TextExtrusion' - Extrusion vector.
'TextObliqueAngle' - Oblique angle.

See also DXF_SET.

