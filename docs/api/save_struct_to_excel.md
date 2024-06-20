---
title : save_struct_to_excel
parent: API
grand_parent : Documentation
---
# Summary for: **save_struct_to_excel**

**save_struct_to_excel** Save struct contents to Excel

**save_struct_to_excel**(fname, struct, sheet)

**save_struct_to_excel**(fname, struct, sheet, key, val) with the following
key-value pairs:
* save_arrays : Save large array values to [sheet '_'
array_field_name]. Default false.
* save_which : Which arrays to save. Either 'wide' : only save wide
arrays (ncols > nrows), often current or voltage waveforms, OR 'all' in
which case all arrays are saved.
* save_names : An array of Strings containing the names of the arrays
to save. Default an empty array, in which case all arrays filling the
save_which condition are saved.

