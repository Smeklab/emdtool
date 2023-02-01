---
title : get_materialData
parent: API
grand_parent : Documentation
---
# Summary for: **get_materialData**

**get_materialData** Get material data struct.

data = **get_materialData**(matId) returns a struct containing at least the
following fields of physical quantities in SI units:

* name : material name or matId
* B, H : BH curve
* properties : a struct, see *below* .

as well as the following fields intended for simulation-specific use

* elements : a placeholder array for use with meshes
* plot_args : Default plotting arguments


The **properties**  struct has the following fields

* coeffs : iron loss coefficients (hysteresis, eddy, excess) as (W/kg)
at 1 T and 50 Hz
* rho : Density
* sigma : Electrical conductivity at 20C
* alpha_sigma : Temperature coefficient for 1/sigma (p.u. per K)
* lambda : Thermal conductivity
* Br : remanence flux density (PM materials)
* alpha_Br : remanence temperature coefficient (p.u. per K)
* mur : relative recoil permeability (PM materials)

*matId*  can either be a string pointing to a material data csv file, or a
number corresponding to the materials in [get_defaultMaterials](get_defaultMaterials.html)

Copyright (c) 2016 Antti Lehikoinen / Aalto University

(c)  2019 Antti Lehikoinen / Smeklab

