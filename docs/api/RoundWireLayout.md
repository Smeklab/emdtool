---
title : RoundWireLayout
parent: API
grand_parent : Documentation
---
## Summary for RoundWireLayout
RoundWireLayout Winding layout class for random-wound coils.

The class tries to utilize existing magnet wire data, IEC standard,
loaded from the Excel sheet WireSizes.xlsx, in turn parsed from
Elektrisola and Hitachi datasheets (enamelled_copper_wire_english.pdf
and MagnetWire_en.pdf, respectively).
## PROPERTIES
* breakdown_voltage - minimum breakdown voltage

* bundling_algorithm - how conductors are bundled together

* diameter - nominal **diameter** (m)

* grade - insulation grade, IEC (= 1, 2, 3) %FIXME setter method

* maximum_outer_diameter - maximum outer diameter

* RoundWireLayout.wire_data is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * RoundWireLayout Winding layout class for random-wound coils.

The class tries to utilize existing magnet wire data, IEC standard,
loaded from the Excel sheet WireSizes.xlsx, in turn parsed from
Elektrisola and Hitachi datasheets (enamelled_copper_wire_english.pdf
and MagnetWire_en.pdf, respectively).
Documentation for RoundWireLayout/RoundWireLayout
doc RoundWireLayout

### * bundle_conductors Bundle conductors.

Xc_reordered = bundle_conductors(this, Xc)

Given a 2xN array of conductor centers `Xc`, this function reorders the
conductors to form the specified kind of bundles.

Actual bundling is dispached to another function specified in `this.bundling_algorithm`
either as a string or a function handle.

### * RoundWireLayout/bundle_successive_nearest is a function.
Xc = bundle_successive_nearest(this, Xc)

### * compute_losses_stranded Estimate AC losses in stranded windings.

Estimate AC loss distribution for stranded (= non-solid)
conductor models.

[p_el, data] = compute_losses_stranded(this, winding_spec, dBx,
dBy, conductivity), where

* winding_spec : [PolyphaseWindingSpec](PolyphaseWindingSpec.html) object for specifying the
winding.

* dBx, dBy : time-derivative of flux density

* conductivity : electrical conductivity, assumed uniform.

See the code of PolyphaseCircuit.stranded_conductor_losses for
more details.
Help for RoundWireLayout/compute_losses_stranded is inherited from superclass WindingLayoutBase

### * conductor_area Total conductor area per slot.

Returns nan by default; should be overridden in subclasses if
needed.
Help for RoundWireLayout/conductor_area is inherited from superclass WindingLayoutBase

### * tries to move the slot boundaries in by the amount reff
algorithm used:
http://stackoverflow.com/questions/563198/how-do-you-detect-where-two-line-segments-intersect

### * RoundWireLayout/create_custom_geometry is a function.
create_custom_geometry(this, varargin)

### * create_solid_geometry Create slot geometry for solid winding
models.
Help for RoundWireLayout/create_solid_geometry is inherited from superclass WindingLayoutBase

### * RoundWireLayout/create_solid_or_point_geometry is a function.
create_solid_or_point_geometry(this, parent_geometry, winding_spec, slot)

### * gross_conductor_area Conductor area WITH insulation.

Returns the gross conductor area: useful area plus
insulation, per single conductor. Returns nan by default,
should be subclassed.
Help for RoundWireLayout/gross_conductor_area is inherited from superclass WindingLayoutBase

### * RoundWireLayout.pack_conductors_hexagonal is a function.
Xcenter = RoundWireLayout.pack_conductors_hexagonal(points, r, N)

### * RoundWireLayout/postprocess_point_losses is a function.
[p_el, data] = postprocess_point_losses(this, winding_spec, dBx, dBy, conductivity)

### * RoundWireLayout/visualize_losses is a function.
visualize_losses(this, model, data)

