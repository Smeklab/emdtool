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

The slot insulation material can be given in
`dim.slot_insulation_material`.

## Properties

### .**breakdown_voltage** - minimum breakdown voltage

### .**bundling_algorithm** Algorithm for wire bundling.

The bundling algorithm handles how the wires belonging to the
same turn are assigned positions in the actual wire packing. The
algorithm function returns the same conductor centers (2xN array
`Xc`, but with the columns reordered.

The default is the successive nearest algorithm of `this`; the other
option is to supply a function handle (getting as arguments
`this` and the original coordinates `Xc`).

### .**bundling_arguments** A structure of arguments for bundling.

### .**conductor_centers** Conductor center coordinates.

Bundled conductor center coordinates in the slot reference frame.
Cell array, one cell for each layer.

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

### .**bundle_successive_nearest** Successive bundling algorithm.

Xc = bundle_successive_nearest(this, Xc) reorders the conductor center
array `Xc` in the following fashion.
1. Begin with all positions in Xc as *unselected*
2. Select the first unselected position as the bundle center.
3. Compute the distance of each conductor position (in Xc) from the
bundle center. Assign the closest wires_in_hand conductors to the same
bundle. Mark those positions as selected.
4. Repeat for each bundle.

While the algorithm is not guaranteed to result in good bundles in all
cases, it runs very quickly in a non-iterative fashion, and in practice
tends to work quite well.

Optional arguments:
* Setting a structure to `this.bundling_arguments`, with a field
'y_weight' assigns the given weight to the y-coordinates aka slot short
axis. A larger-than-unity value tends to result in bundles higher in
the x-direction (slot long axis).

See this.visualize_bundling for a visualization.

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

### .**visualize_bundling** Visualize bundling.

Visualize conductor bundling. So far only plots the first slot.

### .RoundWireLayout/**visualize_losses** is a function.
visualize_losses(this, model, data)


