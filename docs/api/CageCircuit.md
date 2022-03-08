---
title : CageCircuit
parent: API
grand_parent : Documentation
---
## Summary for CageCircuit
CageCircuit methods:
CageCircuit - is a class.
finalize_matrices - Set matrices, etc.
merge_circuit_from_another_slice - CageCircuit/merge_circuit_from_another_slice is a function.
## PROPERTIES
* CageCircuit/broken_bars is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * CageCircuit/CageCircuit is a constructor.
obj = CageCircuit
Documentation for CageCircuit/CageCircuit
doc CageCircuit

### * CageCircuit/bar_currents is a function.
I = bar_currents(this, solution)

### * finalize_matrices Set matrices, etc.

### * CageCircuit/get_EW_impedance_matrix is a function.
Z = get_EW_impedance_matrix(this)

### * CageCircuit/get_EW_inductance_matrix is a function.
X = get_EW_inductance_matrix(this)

### * get_loop_matrix EW resistance matrix.
Help for CageCircuit/get_EW_resistance_matrix is inherited from superclass Circuit

### * init Initialize matrices etc. for circuit.

init(this, problem) ties this to the given [MagneticsProblem](MagneticsProblem.html) and
initializes the problem matrices and arrays in this.matrices:

* inds_solid : which of the Conductors in this are solid

* inds_stranded : likewise for stranded

* R : per-conductor resistances, active length

* R_EW : per-conductor resistances, end-winding length

* area : conductor areas

* sigma : conductor conductivities. Assumed uniform.

* M : mass/damping matrix

* C_Ai : current source matrix

* C_Au : voltage source matrix

* C_uu : voltage-voltage coupling matrix

* L : circuit loop matrix
Help for CageCircuit/init is inherited from superclass Circuit

### * CageCircuit/loop_currents is a function.
I = loop_currents(this, solution)

### * losses Circuit losses.

[W_mean, loss_data] = losses(this, solution)

[W_mean, loss_data] = losses(this, solution, varargin), where

* W_mean : average total **losses** (W).

* loss_data : loss breakdowns and other data, depending on
CircuitBase subclass type. Structure.

By default, all loss information is computed for the entire
geometry, not just symmetry-section. This also applies to
per-conductor losses, so e.g. the **losses** in the "first damper
bar" actually mean "the sum of the **losses** in the first damper bar
of all poles".

For **losses** in typical 2D solid conductors (e.g. BlockCircuit,
SheetCircuit, CageCircuit), see compute_SolidConductorLosses.
Help for CageCircuit/losses is inherited from superclass CircuitBase

### * CageCircuit/merge_circuit_from_another_slice is a function.
merge_circuit_from_another_slice(this, another_circuit)

