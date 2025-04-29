---
title : PolyphaseWindingSpec
parent: API
grand_parent : Documentation
---
# Summary for: **PolyphaseWindingSpec**  < [Indexable](Indexable.html)

## Class summary

PolyphaseWindingSpec Winding specification class.

Instantiation:

this = PolyphaseWindingSpec()

this = PolyphaseWindingSpec(dimensions)

Loads the number of slots from dimensions.Qs and pole-pair
count from dimensions.p

Responsibilities:

* contains winding-specifying parameters (turns, layers, etc)

* assembles winding loop matrix for finite-element analysis

* calculates total (half-)turn length and winding overhang

* handles end-winding indcutance bias calculation

The winding specification offers a way to control the winding model
used (solid or stranded conductors) and the slot layout (e.g. round
or rectangular wires). This functionality only works if the parent
geometry is of the [LayoutCompatible](LayoutCompatible.html) class. In this case:

* `this.layout_spec`, a [WindingLayoutBase](WindingLayoutBase.html) object defines the
layout.

* `this.winding_model_type`, typically `defs.stranded` or  `defs.solid`
defines the winding model type used.

## Properties

### .**FE_filling_factor** Conductor filling factor for finite-element
analysis.

Equal to 1 for solid-conductor models.
Equal to this.filling_factor for stranded models.

### .**N_layers** - number of winding layers

### .**N_series** Turns per modelled coil.

Number of turns per modelled coil (slot and layer). Something of
a legacy value; please seriously consider using `number_of_turns_per_coil`
instead. These values are typically the same, apart from axial
flux machines with mirrored slots.

Setting or getting this property directly sets / gets the
`number_of_turns_per_coil` property, modified (multiplied) by
`this.get_dimension('axial_symmetry_sectors')` if set.

### .**a** - number of parallel paths

### .PolyphaseWindingSpec/**conductor_material** is a property.

### .**connection** - connection

### .**end_winding_inductance_multiplier** Multiplier for end-winding
inductance

### .**end_winding_length_factor** End-winding length factor.

Placeholder variable for user-specified custom end-turn length
factors. Must be handled in subclasses.

### .**end_winding_length_per_conductor**

### .**extra_phase_inductance** - extra per-phase inductance

### .**filling_factor** Conductor area PER meshed conductor area.

Computed automatically from layout_spec.conductor_area if layout_spec.conductor area
returns a real value. If it returns nan, fill factor has to be
specified.

Note: for solid winding models, filling_factor will be ~equal to
1.

### .**gross_filling_factor** Gross filling factor

Gross conductor area (conductor + insulation) divided by the
uninsulated winding area (winding window area - liners and layer
insulations) .

### .**half_of_turn_length** - half of turn length

### .**layout_matrix** - winding layout matrix. See `this.set_layout_matrix`

### .**layout_spec** A WindingLayoutBase object specifying slot conductor
layout.

Default: UniformLayout.

See RectangularLayout and RoundWireLayout for common
alternatives.

Note that some Layouts only support stranded winding models,
while others also enable solid models with each conductor
modelled.

For layouts to work properly, the parent geometry has to be of
the [LayoutCompatible](LayoutCompatible.html) class.

### .**lew_given** - given end-winding inductance per turn and per slot-segment

### .PolyphaseWindingSpec/**number_of_dq_components** is a property.

### .**number_of_turns_per_coil** Number of turns per coil.

The number of coils is assumed to be equal to the number of slots
multiplied by the number of winding layers.

**** NOTE** In machines with the `axial_symmetry_sectors` dimension
defined (in the `.dimensions` struct),

`number_of_turns_per_coil = axial_symmetry_sectors * N_series`

While this may make sense for a YASA-style machine with 2 axial
symmetry sectors and only half of the stator modelled, it may be
nonsensical for other topologies. For now, things are what they
are though - in doubt, it's better to use the `N_series` property
to set the number of turns per modelled coil.

### .**p** - number of pole-pairs

### .**phases** - number of phases

### .**series_conductor_length_per_phase** - series-conductor length per-phase

### .**series_turns_per_phase** - number of series-turns per phase

### .**slot_filling_factor** Conductor area to winding area.

### .**span** Coil span

Should not be set manually. Computed once when the `bind_to_model`
method is called.

### .**strand_transposition_type** Type of strand transpositions.

Controls the type of strand transpositions, in cases where the
number of meshed wires in hand is > 1. The options include:
* 'none' : no transpositions
* 'ideal' : strand order in negative coil sides is reversed
* a structure with the fields 'type' and optional extra fields,
see options below.

Structure options:
* type = 'ideal'. Same as the 'ideal' case above.
* type = 'none'. Same as 'none' above.
* type = 'block', number_of_blocks = integer. Reverse strand
order in blocks or braids. The order of blocks/braids is
reversed for odd-numbered slots; the order *within*  blocks is
left unchanged.
* type = 'block2024', number_of_blocks = integer. Same as
above, but reverse the block order for return paths instead of
odd-numbered slots.

### .**winding_model_type** Winding model type.

Type of winding model used, typically defs.solid or
defs.stranded; defs.custom when supported by this.layout_spec.

The parent geometry must be of the [LayoutCompatible](LayoutCompatible.html) class.

### .**wires_in_hand** - number of wires in hand. Must be 1 for infinite stranded windings.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**add_clone** Add clone.

add_clone(this, clone_spec) adds another [PolyphaseWindingSpec](PolyphaseWindingSpec.html) object as
a clone (see below).

add_clone(this, clone_spec, 'direction', -1) additionally models the
clone spec with reversed polarity for each coil.

The concept of a 'clone' is an experimental feature. It is intended for
modelling topologies where the 'same' winding spans multiple [GeoBase](GeoBase.html)
object - typically double-stator machines. It is assumed that the winding
pattern repeats itself over the clones, with the optional change in
polarity. Some important notes below:
* This method should only be called after the [MotorModelBase](MotorModelBase.html).finalize
method has been called.
* When creating the stator objects containing the to-be-clone circuits,
a copy of the original winding spec object has to be given, normally by
calling the spec.copy method.
* When this method is called:
* the is_clone property of the clone spec is set to true.
* The [Conductor](Conductor.html)s of the parent [CircuitBase](CircuitBase.html) of the clone spec is
added to the circuit of `this`.
* The parent circuit of the clone spec is removed from the
model `this.root`
* If the underlying model is sliced, the conductors are re-ordered
so that the conductors belonging to the same circuit are
consecutively numbered.

### .**average_phase_quantity_matrix** Matrix for computing average
phase quantities.

Mave = average_phase_quantity_matrix(this)

This matrix is used to for problems where
`this.meshed_wires_in_hand`  > 1, and e.g. the phase flux
linkages of the parallel wires/paths may differ.

### .**bias_angle** Bias angle for winding.

a = bias_angle(this)

Returns a rotation angle for the direct-quadrature
transformation so that injecting d-axis current into the
winding generates flux on the rotor d-axis.

By default, this means that feeding the machine with the
current
`Is = SpaceVectors.xy([1; zeros(this.phases-1, 1)], 0, this.bias_angle)`
results in a flux density pattern oriented on the rotor
d-axis, as defined by the the `rotor(1).d_axis_angle` method,
where the d-axis angle is returned in mechanical radians.

Please note that this behaviour may be overwritten by custom
subclass implementations of the `this.xy` and `this.dq`
methods.

### .**bind_to_model** Bind to [CircuitBase](CircuitBase.html) object.

### .**calculate_winding_factors** Calculate winding factors.

[Wfs, data] = calculate_winding_factors(this, ns) calculates the m-phase
winding factors, returned as the 2 x numel(ps) array `Wfs`. The term
*winding factor*  is here defined as the ability the winding layout to
excite an n-polepair flux density wave travelling in the forward (first
row of `Wfs`) or in the backward (second row of `Wfs`) direction.

The effect of the rotation direction is numerically evaluated by
effectively computing the induced flux linkages at 0 and 90 electrical
degrees, performing the dq-transformation with `this.dq` and then taking
the average.

The results are scaled with `this.p`, so that winding factor for the
working harmonic is in the 0.85...1 region for typical windings.

### .**copy** Return a semi-shallow **copy** of this.

spec = copy(this) returns a **copy** of this. All handle properties will
still point to their original instances.

### .**create_slot_geometry** Create slot geometry.

Access method to WindingLayoutBase.create_slot_geometry

### .**dq** Transformation to **dq** frame

y = dq(this, xy, angles)

### .**end_winding_inductance_matrix** Compute the EW inductance matrix.

Computes the end-winding inductance matrix.

WARNING: For analysis/implementation reasons, the matrix is computed
**assuming no parallel paths**  = this.a = 1. The effect of parallel paths
is considered elsewhere.

The matrix is computed as

`Lew = end_winding_inductance_matrix(this)`

where

`Lew = 2 ** L_<segment' **  l_segment * L_segment` , where

* `L_segment`  : loop matrix for end-winding segments = segment between
two successive slots. Computed with `this.end_winding_loop_matrix`

* `l_segment`  : inductance of one end-winding segment. Computed with
`this.end_winding_segment_inductance` .

The resulting matrix is then multiplied with
`this.end_winding_inductance_multiplier`.

If non-zero, `this.this.extra_phase_inductance`  is added to the diagonal
of `Lew` , or block-diagonal in case `this.meshed_wires_in_hand`  > 1.


Only works for radial flux machines.

### .**end_winding_loop_matrix** End-winding loop matrix, per slot-segment.

L = end_winding_loop_matrix(this)

Returns a number_of_slots x phases matrix, representing how many
times each phase traverses each 'slot segment' = end-winding
piece between two successive slots.

Only computed for one end of a radial-flux machine.

### .**end_winding_segment_inductance** Inductance of one end-winding segment.

A 'segment' is understood as the part of end-winding between
two-successive slot pitches. Whenever there are several phases and/or
parallel paths running in the same segment, their self- and mutual
inductances are assumed equal in absolute value. (Signs may differ
depending on the coil/path/phase direction; this is considered by
`this.end_winding_segment_inductance` .

Calculation somewhat follows the approach given by Lipo, T.A. (*) for a random-wound
winding. Iron modelled as perfect conductor, to accound for eddy damping.

(*) Introduction to AC Machine Design

Only works for radial-flux machines.

### .**independent_current_loop_matrix** Current loop matrix for
independent coil currents.

### .PolyphaseWindingSpec/**line_current_matrix** is a function.
M = line_current_matrix(this)

### .PolyphaseWindingSpec/**line_to_line_voltage_matrix** is a function.
M = line_to_line_voltage_matrix(this)

### .**loop_matrix** Loop matrix associated with this.

L = loop_matrix(this)

Returns a number_of_meshed_conductors_in_model x number_of_current_loops matrix, with the
entries:

* L(i, k) = +n : Loop k traverses conductor i to positive direction

* L(i, k) = -n : Loop k traverses conductor i to positive direction

where:

* number_of_meshed_conductors : Number of would-be meshed conductors
per entire model. Equal to this.number_of_layers x
this.number_of_meshed_conductors_per_layer x this.number_of_slots

* number_of_current_loops : Number of current loops in winding; this.phases x this.wires_in_hand

* n : number of stranded turns per meshed conductor. 1 for
solid-conductor models, typically equal to this.N_series for stranded
models.

### .**loop_matrix_for_model** Loop matrix for the FE model.

L = loop_matrix_for_model(this) returns the loop matrix for the symmetry
sector modelled, with size(L,1) = numel(this.circuit.conductors).

L = loop_matrix_for_model(this, false) to ignore additional slices in the
model and only return the matrix for the first slice. Mainly intended for
low-level functionality.

### .**plot_winding_factors** Plot winding factors in the current window.

plot_winding_factors(this) plots the winding factors for the first `50p`
harmonics in the current window.

plot_winding_factors(this, ns) specifies the harmonics in the array `ns`.
Note that the orders are absolute, i.e. the order of the working harmonic
is normally `p` and not 1.

The forward-rotating harmonics are plotted as blue bars >1, and
backward-rotating ones as red bars <1.

**** Note**: The 'winding factors' are defined as m-phase mmf amplitudes
excited by winding when fed with balanced sinusoidal m-phase waveforms;
thus the amplitudes decay with the harmonic order as
`1/n`.

### .**property_modified** Adds the modified property to the list of modified
properties.

### .PolyphaseWindingSpec/**remove_clone_circuits_from_model** is a function.
remove_clone_circuits_from_model(this)

### .**save_to_excel** Export winding specs.

save_to_excel(this, filename, varargin)

### .**set_layout_matrix** Initialize winding layout matrix.

A layout matrix is a number_of_layers x number_of_slots matrix of
integers, with values in range -phases...phases.

The entries of the layout matrix W are:

*  W(i, j) = +k : phase k goes through layer i, slot j, to
positive direction:

* W(i, j) = -k : phase k goes through layer i, slot j, to
negative direction:

### .**show_unset_properties** Show warning about unset properties (default
values).

### .PolyphaseWindingSpec/**symmetry_period** is a function.
n = symmetry_period(this)

### .**total_phase_quantity_matrix** Sum of quantities in parallel
paths.

Mtot = total_phase_quantity_matrix(this)

This matrix is used to for problems where
`this.meshed_wires_in_hand`  > 1, to e.g. compute the total
current in a phase:

Iphase = Mtot * I_parallel_paths

### .PolyphaseWindingSpec/**visualize** is a function.
visualize(this, varargin)

### .**winding_angle** Compute winding angle.

a = winding_angle(this)

Compute the stator *winding angle*  i.e. rotation angle for the
direct-quadrature space vector transformation (*without* considering the
rotor bias angle) so that injecting d-axis current into the stator winding
generates a cosinusoidal airgap flux
density waveform (first peak of fundamental at y = 0, assuming
non-salient rotor).

In other words, the angle is defined so that feeding the winding with the
current
`Is = SpaceVectors.xy([1; zeros(this.phases-1, 1)], 0, this.winding_angle)`
results in the aforementioned airgap flux density (with a non-salient
rotor)

### .**xy** Transform to phase quantities

y = xy(this, dq, angles), where

* angles : (rotor) angles in electrical degrees.

y = xy(this, dq)


