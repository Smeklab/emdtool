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

