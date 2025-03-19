---
title : SteelLibrary
parent: API
grand_parent : Documentation
---
# Summary for: **SteelLibrary**  < handle

## Class summary

SteelLibrary Static class for creating electrical steel Material
objects.

Data referenced from Tata Steel website at some
point, see https://www.tatasteeleurope.com/ts/engineering/products/electrical-steel

The underlying data is stored in an Excel file, under the 'Materials'
folder. Modifying this data file is not recommended, as changes will
be lost with any EMDtool update, unless special care is taken not to
overwrite the modified fiel.

Usage:

mat = SteelLibrary.create( grade_name )

where grade_name = string or char. See SteelLibrary.grades for available
grades.

mat = SteelLibrary.create(grade_name, 'plot_fit', true)

to also plot the resulting loss fit

To use a custom data file, use the syntax

mat = SteelLibrary.create(grade_name, 'file_to_use', file_name)

For other key-value arguments, see the documentation to
`SteelLibrary.create` and the methods called there.

## Properties

### .SteelLibrary/**fname** is a property.

### .SteelLibrary.**grades** is a property.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**create** Create new material from the lib.

material_object = create(grade_name) **create** a [Material](Material.html) object of the
corresponding grade. See `SteelLibrary.grades` for the available grades.

material_object = create(grade_name, 'optimize_exponents', true) to also
optimize the time-domain generalized Steinmetz model exponents, used for
the hysteresis losses.

See also SteelLibrary.parse_data_from_Excel  and fit_losses.fit_losses
for extra optional arguments.

Optional arguments include:
* 'fit_analytical_BH' : false (DEFAULT) / true. Replace material BH
data by fitting an analytical BH curve to the data with
`this.generate_BH_langevin`.
* 'file_to_use' : use a custom datasheet file (.xlsx) name/path.

### .**fit_losses** Fit loss data.

[coeffs, c_opt]  = fit_losses(this, B, fs, Ws, varargin) fits the
frequency-domain Bertotti model to the given material loss data.

Input arguments:
* B : a 1 x Nb array of flux density values, assumed to be
peak-of-sine.
* fs : a 1 x Nf array of frequencies.
* Ws : a Nb x Nf array of loss densities, as W/kg.

Returns:
* coeffs : coefficients for the Bertotti loss model, with the loss
density expressed as `coeffs(1)*f^a*B^b + coeffs(2)*f^2*B^2 +
coeffs(3)*f^1.5*B^1.5`
* copt : optimized hysteresis loss exponents `[a b]`. See below.

Optional key-value arguments:
* 'plot_fit' : visualize fit. Default false.
* 'include_excess' : include the excess loss term. Default false.
* 'normalize_losses' : Perform normalized least-squares when fitting
the losses. When set to true, better agreement is typically obtained at
low flux densities (corresponding to better prediction of the
hysteresis loss coefficient), at the cost of decreased accuracy at high
loss densities. Default false.
* 'optimize_exponents' : optimize the hysteresis loss exponents [a,b].
Defaults to false.

### .**generate_BH_langevin** Fit analytical Langevin curve.

[Bnew, Hnew] = generate_BH_langevin(this, B, H) returns a new BH curve,
consisting of a single Langevin function fitted to the measured data. The
fitted curve will go exactly through the (B(end), H(end).

Note: The resulting curve may fail to well approximate the original curve
at lower field strengths. User discretion is advised.

### .**get_grades** List available steel grades.

### .**parse_data_from_Excel** Load Material data from Excel.

[B, H, Ws, fs, Bint, Hint] = parse_data_from_Excel(this, gradename) where
B : a 1xNb array of flux density values for tabulated loss data. Assumed
to be peak-of-sine values.
H : a 1xNb array of field strength values corresponding to B. Can be
all-empty, see below.
Ws : a Nb x Nf array of loss values, expressed as W/kg.
fs : 1 x Nf array of frequencies for the tabuled loss data.
Bint : Data for material BH curve interpolation, see next bullet.
Hint : Data for material BH curve interpolation. If not found in the
Excel, then Bint = B, Hint = H.


