---
title : PolyphaseCircuit
parent: API
grand_parent : Documentation
---
# Summary for: **PolyphaseCircuit**  < [Circuit](Circuit.html) & [SliceableCircuit](SliceableCircuit.html)

## Class summary

PolyphaseCircuit Class for finite-element representation of polyphase
circuits.

this = PolyphaseCircuit(name, winding_spec)

Returns a new PolyphaseCircuit object with the given name
and associated with the [PolyphaseWindingSpec](PolyphaseWindingSpec.html) winding
specification.

A PolyphaseCircuit is largely characterized by its `winding_spec`
property = a [PolyphaseWindingSpec](PolyphaseWindingSpec.html) object. This winding
specification object contains information such as number of turns and
parallel paths, winding layout matrix, loop matrix, etc.

The PolyphaseCircuit then handles the finite-element representation
of the winding, as well as the different supply modes. See
`this.set_load` .

## Properties

### .PolyphaseCircuit.**circuit_analysis_arguments** is a property.

### .**include_lew** - include end-winding inductance, boolean

### .PolyphaseCircuit/**slot** is a property.

### .**supply_mode** - supply mode.

### .**winding_spec** - winding parameters specification; a [PolyphaseWinding](PolyphaseWinding.html) object


## Methods

Class methods are listed below. Inherited methods are not included.

### .**coil_current** Coil current from solution.

I = coil_current(this, solution), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**coil_current_density** Coil current densities from solution.

I = coil_current_density(this, solution), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**conductor_area_per_turn_and_coil** Equivalent conductor area per single
turn-side, considering fill-factor.

### .**conductor_current** Conductor currents from solution.

I = conductor_current(this, solution), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

I is a vector of currents, row per meshed conductor.

### .**conductor_flux_linkage** Conductor flux linkage.

Phi = conductor_flux_linkage(this, solution) returns the
average flux linkage of each [Conductor](Conductor.html), without considering
the number of symmetry sectors, parallel paths or anything.

### .PolyphaseCircuit/**derivate_phase_quantity** is a function.
E = derivate_phase_quantity(this, QoI, solution, varargin)

### .PolyphaseCircuit/**domains** is a function.
ds = domains(this)

### .**ew_length_per_conductor** End-winding conductor length.

### .**filling_factor** Conductor filling factor.

### .**get_DC_resistance_matrix** DC-resistance matrix for the FE
problem.

### .**get_EW_inductance_matrix** End-winding inductance matrix.

### .PolyphaseCircuit/**get_cc_blocks** is a function.
[Scc, Mcc] = get_cc_blocks(this, problem, type)

### .**get_loop_matrix** Loop matrix associated with the circuit.

### .PolyphaseCircuit/**get_lt_matrix** is a function.
Scc = get_lt_matrix(this, problem, type, t, kstep, Xprev)

### .PolyphaseCircuit/**get_nl_matrix** is a function.
[Scc, rescc] = get_nl_matrix(this, problem, type, t, kstep, Xprev, Xiter)

### .**get_solid_resistance_matrix** Resistance matrix for solid
parts of the winding (solid active conductors only)

### .get_EW_impedance_matrix Complex end-winding impedance matrix.

### .**get_stranded_resistance_matrix** Resistance matrix for stranded
parts of the winding (all EW + stranded active conductors)

### .**init** Initialize circuit matrices.

### .PolyphaseCircuit.**line_current_matrix** is a function.
M = PolyphaseCircuit.line_current_matrix

### .PolyphaseCircuit.**line_to_line_voltage_matrix** is a function.
M = PolyphaseCircuit.line_to_line_voltage_matrix

### .**losses** Compute **losses** and loss data.

[Pmean, data] = losses(this, solution) returns the mean total **losses** and
a structure of loss data, including
* conductor_loss_waveform : instantaneous total **losses** per [Conductor](Conductor.html)
* P_AC_time : waveform of total AC losses
* Ptot_time_conductor : waveform of per-conductor losses
* mean_total_losses : as the title suggests
** mean_AC_losses : ** *NOTE** Mean **** eddy-current** losses, i.e. losses
due to uneven current density distribution inside the conductors.
* mean_DC_losses : Mean **losses** neglecting all AC effects. This includes
the eddy-current losses, the uneven distribution of total current
within multiple wires in-hand, and the zero-sequence component of the
phase-currents. **** NOTE** This will, for now, give incorrect results for
non-standard winding configurations, where the zero-sequence component
is not simply sum(Iphase, 1).
* mean_conductor_losses : mean **losses** per conductor
* mean_circulating_current_losses : total loss component due to
circulating-current phenomana, including both strand-level and
phase-level circulating currents. Computed as the difference between the ohmic losses
computed from conductor currents, and the `mean_DC_losses` field.
* mean_circulating_current_losses_on_phase_level : difference between
`mean_DC_losses`, and the **losses** computed from strand DC resistances,
assuming even distribution of current within the multiple parallel
strands in each phase.
* P_DC_conductor : total **losses** from conductor currents and conductor
DC-resistances. Exluded eddy-current effects, includes all circulating
currents.

### .PolyphaseCircuit/**mass** is a function.
[m, data] = mass(this)

### .PolyphaseCircuit/**merge_circuit_from_another_slice** is a function.
merge_circuit_from_another_slice(this, another_circuit)

### .**meshed_conductor_area_per_layer_and_turn** Raw surface area.

Returns the actual meshed area per meshed turn.

### .PolyphaseCircuit/**parallel_paths** is a function.
a = parallel_paths(this)

### .**parse_space_vector** Transform quantity to dq-form.

sv = parse_space_vector(this, Q, solution)

Q = quantity of interest, phases x steps

### .**parse_terminal_voltage** Parse terminal voltages from phase voltages.

Note: the voltages are given against the 0 V potentials.

U = parse_terminal_voltage(this, U, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**phase_bemf** Phase induced voltage.

Equal to the time-derivative of this.phase_flux_linkage, so
NOT exactly the 'textbook back-emf' which is often understood
to include only the PM flux.

U = phase_bemf(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

U = time-derivative of `this.terminal_flux_linkage`

### .**phase_current** Phase current from solution.

I = phase_current(this, solution), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**phase_flux_linkage** Phase flux linkage.

Phi = phase_flux_linkage(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

**** Note**: the contribution of end-winding leakage inductance
term is **** NOT** included by default. To **do**  include it,
please specify 'include_ew', true in the key-value arguments.

### .**phase_impedance_voltage_drop** Phase voltage drops from
solution.

The voltage drop includes the reactive voltage drop in the
end-winding, and the resistive voltage drop over conductors
modelled as stranded (normally either the entire winding if
this.winding_spec.winding_model_type = defs.stranded, or just
the end-winding region in case defs.solid).

U = phase_impedance_voltage_drop(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .resistance_matrix_seen_from_terminals Phase resistance matrix.

Phase resistance matrix as seen from the phase terminals,
i.e. considering the effect of parallel paths.

### .**phase_voltage** Phase voltages from the solution.

Returns the phase voltages = potential differences as
measured between the ends of each phase. For typical
star-connected machines, this would be the line-to-neutral
voltages; for typical delta-connected motors they are the
line-to-line voltages.

Or, expressed more exactly, the "phase voltage" of each phase
is the sum of the voltages over all the individual coils
belonging to a certain phase. The voltage includes both the
induced voltage (dPhi/dt) and voltage drop over lumped
impedances.

U = phase_voltage(this, solution, varargin)

### .**results_summary** Summary of important results.

out = results_summary(this, solution) computes quantities such as phase
and terminal currents and voltages and returns them in the structure out.

result_summary(this, solution) prints the results in the command prompt.

### .set_load1 Increment load vector.

### .**set_load**1 Increment load vector.

### .PolyphaseCircuit/**set_parent** is a function.
set_parent(this, parent)

### .**set_source** Set circuit source.

set_source(this, source_type, source)

Set the winding source, see below.

source_type : string specifying source type:

* 'uniform coil current' : Uses the specified coil current, distributed
uniformly over the conductor [Domain](Domain.html) areas. Works for any analysis
type.

* 'terminal current source' : Specifies the net terminal current. Please
note that the m-phase current source is in virtual star, so for delta-connected machines
the current source imposes the *phase*  current, minus any circulatory / zero-sequency components.

* 'terminal voltage' : Specifies the potential (V) at each terminal,
with respect to an arbitrary reference point. For harmonic/stepping
analysis only.

* 'circuit' : a [CircuitSource](CircuitSource.html) object.

source : Source values:

* phases x steps array : used directly as such.

* function handle : typically to VoltageSource.U method

### .A = this.parent.**slot_area**();

### .PolyphaseCircuit/**slot_conductor_area** is a function.
A = slot_conductor_area(this)

### .**stranded_conductor_losses** Compute losses in stranded conductors.

### .**terminal_bemf** Terminal induced voltage.

See this.phase_bemf.

U = terminal_bemf(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

U = time-derivative of `this.terminal_flux_linkage`  return
value.

### .**terminal_current** Terminal current from solution.

I = terminal_current(this, solution), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**terminal_flux_linkace** Terminal flux linkage.

Kind of like 'line-to-line' flux linkage, as little sense as
it makes.

Phi = terminal_flux_linkace(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**terminal_impedance_voltage_drop** Phase voltage drops from
solution.

U = terminal_impedance_voltage_drop(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.

### .**terminal_voltage** Terminal voltages from solution.

Returns the "terminal voltages", i.e. potential differences
between successive terminals (1-2, 2-3, ..., n-1).

U = terminal_voltage(this, solution, varargin), where

solution = a [MagneticsSolution](MagneticsSolution.html) object.


