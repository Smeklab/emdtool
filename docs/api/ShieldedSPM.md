---
title : ShieldedSPM
parent: API
grand_parent : Documentation
---
## Summary for ShieldedSPM
ShieldedSPM methods:
ShieldedSPM - is a class.
create_geometry - ShieldedSPM/create_geometry is a function.
save_to_excel - ShieldedSPM/save_to_excel is a function.
## PROPERTIES
## Methods
Class methods are listed below. Inherited methods are not included.
### * ShieldedSPM/ShieldedSPM is a constructor.
this = ShieldedSPM(dim)
Documentation for ShieldedSPM/ShieldedSPM
doc ShieldedSPM

### * create_geometry Initialize geometry.

this = create_geometry(this, varargin)

Initializes the geometry.

Must be subclassed.
Help for ShieldedSPM/create_geometry is inherited from superclass GeoBase

### * ShieldedSPM.parse_IRdim is a function.
dim = ShieldedSPM.parse_IRdim(irdim)

### * ShieldedSPM/parse_thor is a function.
datr = parse_thor(this)

### * save_to_excel Save specifications to Excel sheet.

save_to_excel(this, fname, varargin)
Help for ShieldedSPM/save_to_excel is inherited from superclass GeoBase

