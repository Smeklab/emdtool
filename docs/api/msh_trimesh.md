---
title : msh_trimesh
parent: API
grand_parent : Documentation
---
# Summary for: **msh_trimesh**

**msh_trimesh** 3D surface plot.

Call syntax:
**msh_trimesh**(msh, A, []): plot all elements in mesh
**msh_trimesh**(msh, A, elements): plot only particular elements
**msh_trimesh**(msh, A, elements, plot_args) incluce e.g. plot-color

If the mesh msh has a field "rotel" listing the rotor elements, the call
syntax can be **msh_trimesh**(msh, A, elements, rotorAngle, plot_args):

Copyright (c) 2016 Antti Lehikoinen / Aalto University

