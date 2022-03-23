---
title : RoundWireLayout
parent: API
grand_parent : Documentation
---
# Summary for: **RoundWireLayout**  < [WindingLayoutBase](WindingLayoutBase.html)

## Class summary

RoundWireLayout Winding layout class for random-wound coils.

The class tries to utilize existing magnet wire data, IEC standard,
loaded from the Excel sheet WireSizes.xlsx, in turn parsed from
Elektrisola and Hitachi datasheets (enamelled_copper_wire_english.pdf
and MagnetWire_en.pdf, respectively).

## Properties

### .**breakdown_voltage** - minimum breakdown voltage

### .**bundling_algorithm** - how conductors are bundled together

### .**diameter** - nominal diameter (m)

### .**grade** - insulation grade, IEC (= 1, 2, 3) %FIXME setter method

### .**maximum_outer_diameter** - maximum outer diameter

### .RoundWireLayout.**wire_data** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**bundle_conductors** Bundle conductors.

Xc_reordered = bundle_conductors(this, Xc)

Given a 2xN array of conductor centers `Xc`, this function reorders the
conductors to form the specified kind of bundles.

Actual bundling is dispached to another function specified in `this.bundling_algorithm`
either as a string or a function handle.

### .RoundWireLayout/**bundle_successive_nearest** is a function.
Xc = bundle_successive_nearest(this, Xc)

### .tries to move the slot boundaries in by the amount reff
algorithm used:
http://stackoverflow.com/questions/563198/how-do-you-detect-where-two-line-segments-intersect

### .RoundWireLayout/**create_custom_geometry** is a function.
create_custom_geometry(this, varargin)

### .RoundWireLayout/**create_solid_or_point_geometry** is a function.
create_solid_or_point_geometry(this, parent_geometry, winding_spec, slot)

### .RoundWireLayout.**pack_conductors_hexagonal** is a function.
Xcenter = RoundWireLayout.pack_conductors_hexagonal(points, r, N)

### .RoundWireLayout/**postprocess_point_losses** is a function.
[p_el, data] = postprocess_point_losses(this, winding_spec, dBx, dBy, conductivity)

### .RoundWireLayout/**visualize_losses** is a function.
visualize_losses(this, model, data)


