---
title : emdtool
parent: API
grand_parent : Documentation
---
# Summary for: **emdtool**  < handle

## Class summary

emdtool Main EMDtool utility class.

Main methods:

* get_gmsh_path : Get current gmsh path.

* set_gmsh_path : Set and save gmsh path.

* load_license : Load license from license file.

* set_license : More-manually set license.

* license_information : Show or return license information.

## Properties


## Methods

Class methods are listed below. Inherited methods are not included.

### .emdtool.**check_license** is a function.
is_valid = emdtool.check_license(force_check)

### .**get_gmsh_path** Return path to gmsh executable.

### .**get_version** Read current version from file.

### .emdtool.**license_id** is a function.
lid = emdtool.license_id

### .**license_information** Show license information.

[organization, matlab_license_id, valid_until, systemUser, signature] = emdtool.license_information()

Returns:

* organization : organization

* matlab_license_id : Matlab license number associated with the license

* valid_until : expiration date (YYYY-MM-DD) of the license

* systemUser : system user associated with the license

* signature : license signature hash.


emdtool.license_information()

Show license information in the command window.

### .**load_license** Load license from file and set as current license.

Call syntax:

emdtool.load_license()

Loads license from default_license.lic

emdtool.load_license(filename)

Loads license from given filename

### .**parse_axis_arguments** Parse current-axis arguments.

### .**set_gmsh_path** Set path to gmsh folder.

Example usage:

emdtool.set_gmsh_path( 'C:/programs/gmsh4.7' )

The path is saved to the Matlab 'emdtool' preference group, and persists
between sessions.

### .**set_license** Set license information.

Call syntax:

set_license(userid, valid_until, signature, systemUser, matlab_license_id)

See emdtool.license_information() for help.


