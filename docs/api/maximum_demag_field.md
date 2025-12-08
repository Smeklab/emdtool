---
title : maximum_demag_field
parent: API
grand_parent : Documentation
---
# Summary for: **maximum_demag_field**

**maximum_demag_field** Maximum instantaneous demagnetization field across geometry.

Hdemag = **maximum_demag_field**(solution)

Hdemag = **maximum_demag_field**(solution, key, val, ...) with the following
options:

* 'output', 'relative'/'absolute' : Express demagnetization field as
either A/m or as percentage (100 % -based) of magnet grade HcJ.
Default: relative.
* 'output' : 'volume fraction' : Return relative surface PM volume (%)
seeing a demagnetizing field component larger than the specified value,
see below.
* 'limit_value' : The limit value for the above. Defaults to HcJ.
* 'plot_results' : Plot results? Default false. If true, plots the
demagnetizing field in the current figure. The flipped 'jet' colormap
is used. The worst demagnetizing field is plotted with red, with the
upper (worse demag field) of the colormap is set to 85 % of the
intrinsic coercivitity of all PM materials.

Note:
* It is assumed that the single [Material](Material.html) object in the model only
belongs to one component, i.e. the same object is not shared between
e.g. a stator and a rotor. Built-in EMDtool templates create copies of
the Materials given, so this is normally not an issue.
* If this assumption is violated, the magnets may 'see' incorrect
temperatures.
*This function is intended for PM materials with linear behaviour, i.e.
with the demagnetization process **** not** modelled online/during the
simulation. Material classes intended for demagnetization modelling
supply their own demagnetization analysis methods.

