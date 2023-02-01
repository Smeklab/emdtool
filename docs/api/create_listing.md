---
title : create_listing
parent: API
grand_parent : Documentation
---
# Summary for: **create_listing**

Creates header function and numerical listing function for iterative output
takes in a cell array header where each of n cells contains the title
of a column in a table and returns two functions

1) print_text() returns the header
2) print_num(arg1,arg2,...) prints the numerical output and is
intended to be used in each iteration

Further, the actually formated string for the header is produced in the
initial calling of this function, and the formated string can also be
created when the print_num function has an output variable.

There are several arguments which can be modified by following the
'headers' arguments as name-value pairs. The following example
encapsulates a bit of this

headers={{'arg1_first_row','arg1_second_row','arg1_third_row'},{'arg2_first_row'},'arg3_first_row'};
[disp_header,disp_iteration]=**create_listing**2(headers,'horz_align','right','vert_align',{'top','bottom','top'},'col_sep',' | ');
disp_header()
number = pi;
for ii = -3:15
val=(-1)^ii*number*10^ii;
disp_iteration(val,-val,pi);
end

author: Alexander.Dentler at gmail.com, March 12th 2016, all errors
are yours to deal with.

version 3.14

