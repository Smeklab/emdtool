---
title : slocDir
parent: API
grand_parent : Documentation
---
# Summary for: **slocDir**

SLOCDIR Counts number source lines of code.
LOCSUM = SLOCDIR(VARARGIN) returns the line count for directory tree.
If there are multiple functions in one file, subfunctions are not
counted separately, but rather together.

This function calls SLOC to count lines of code on an individual file.
SLOC was obtained from the File Exchange on MATLAB Central, and it
was written by Raymond Norris of MathWorks Inc.

The following statistics are calculated for a directory tree
- sum of lines of code from all mfiles in the directory tree
- sum of lines of code from all mfiles in parent directory
- sum of lines of code from all mfiles in subdirectories
- lines of code in each mfile in directory tree

The output of this function can either be to a text file or the
MATLAB command prompt or both.

LOCSUM = SLOCDIR(DIRECTORY)
Searches directory tree for and outputs results to command line

LOCSUM = SLOCDIR(DIRECTORY, OUTPUTFILE)
DIRECTORY and it's subfolders are searched.  The results are output
to the text file, OUTPUTFILE, and to the command line.

LOCSUM = SLOCDIR(DIRECTORY, OUTPUTFILE, CMDWINDOW_FLAG)
DIRECTORY and it's subfolders are searched.  The results are output
to the text file, OUTPUTFILE.  If CMDWINDOW_FLAG is true, the
results are also output to the command line.


Examples:
========
locsum = slocdir(‘c:\work’);
locsum = **slocDir**('C:\work', 'workspace_SLOC.txt');
locsum = **slocDir**('C:\work', 'workspace_SLOC.txt', false);


David Roberts
MITRE Corporation/CAAASD 2009
Revision: 1.0 Date: 2009/04/15

