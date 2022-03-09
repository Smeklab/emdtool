---
title : Circuit
parent: API
grand_parent : Documentation
---
## Summary for Circuit
Circuit Simple base class for circuits modelled with the AVI
formulation.
## PROPERTIES
* Circuit/f is a property.

## Methods
Class methods are listed below. Inherited methods are not included.
### * Circuit Constructor.
Documentation for Circuit/Circuit
doc Circuit

### * Circuit/compute_conductor_areas is a function.
compute_conductor_areas(this)

### * get_loop_matrix EW resistance matrix.

### * Circuit/get_cc_blocks is a function.
[Scc, Mcc] = get_cc_blocks(this, problem, type)

### * get_loop_matrix Loop matrix associated with the circuit.

### * get_matrices Get circuit matrices for a particular problem

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

### * set_load1 Set load vector.

Has no effect.

### * set_source Set circuit source.

set_source(this, varargin{:})

Has no effect. Must be subclassed.

