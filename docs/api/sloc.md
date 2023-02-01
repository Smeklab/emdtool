---
title : sloc
parent: API
grand_parent : Documentation
---
# Summary for: **sloc**

SLOC Counts number source lines of code.
SL = SLOC(FILE) returns the line count for FILE.  If there are multiple
functions in one file, subfunctions are not counted separately, but
rather together.

The following lines are not counted as a line of code:
(1) The "function" line
(2) A line that is continued from the previous line --> ...
(3) A comment line, a line that starts with --> % or a line that is
part of a block comment (   %{...%}   )
(4) A blank line

Note: If more than one statement is on the line, it counts that as one
line of code.  For instance the following:

minx = 32; maxx = 100;

is considered to be one line of code.  Also, if the creation of a
matrix is continued onto several line without the use of '...', SLOC
will deem that as separate lines of code.  Using '...' will "tie" the
lines together.

Example:
========
sl = **sloc**('sloc')
sl =
41

