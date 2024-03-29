---
layout: default
title: FAQ and Common mistakes
parent: Knowledge Base
grand_parent : Documentation
math: mathjax2
---

# Frequently-asked questions

## Creating custom materials

Custom materials can be created using the static method `Material.from_specs`. See e.g. [`@SteelLibrary/create.m`](../../api/SteelLibrary.html) for example implementation. Single-use materials can be created inside scripts,
while for more repeated project-specific work, it is recommended to set up a function returning a custom Material object.

If you find yourself using the same custom materials repeatedly in multiple projects, it is recommended to create a personal library of materials, 
outside the EMDtool installation location and also outside project-specific work.

**Note:** Modifying the EMDtool material libraries is **not** recommended, as any changes will be lost whenever you switch to a new EMDtool version.

For fitting the [typical core loss coefficients](iron_losses.html), you can use the [fit_losses method of the `SteelLibrary'](../../api/SteelLibrary.html) class.

## How do I create geometries?

Please see the [documentation for template creation](../../documentation/templates/geometry_creation.html)

### What if I really, really, REALLY don't want to make a template?

It's also possible to instantiate an empty geometry like this

```matlab
not_template = RadialGeometry();
not_template.dimensions = structure_of_some_required_dimensions;
```

and then add the required Domains, Materials, Circuits, etc. manually or inside a script. Again, please see the template documentation for details.


# Common mistakes

# Model creation

## Can'd add a Curve to a Surface?

Check that the Curve you are trying to add shares a Point with the previously-added Curve. Curves must be added
in consistent order (clockwise or counterclockwise) (per surface - defining one Surface in clockwise and the next one in ccw order is fine).

# Meshing fails

* Try the experimental `.check_feasibility` method of your geometry component (a `GeoBase` subclass). This method checks for intersecting Lines (not Arcs, so far) and Surfaces.

* If you have concentric surfaces, verify that the innermost ones have
been added as holes (`s_outer.add_hole(s_inner)`) to the outermost ones.

* Verify that all your Points are unique (no dublicate Points at the same
coordinates).

* Verify that your Curves don't intersect each other.

* Verify that you don't have any Points lying on Curves. Indeed, the only
Points allowed to lie on a Curve are its endpoints (and the
centers of arcs) - not the endpoints of another Curve.

* **T-junctions of two Lines are NOT allowed**, in other words. They must
consist of three Lines at least.

* It is often a good idea to (temporarily) add plotting commands of
Points, Curves, and Surfaces to your geometry template file, to see how
intermediate results look like.

* Verify that you have added all of your Domains and Materials to your
Geometry, and all Surfaces to their corresponding Domains.

* At the moment, the built-in geometry creation does not allow empty (non-meshed) holes. Relatedly, all geometric Surfaces have to be associated with a domain.

* In the extreme case, try restarting your Matlab. Matlab occasionally
locks the files .geo file; restarting Matlab solves this issue.

# Miscellaneous pitfalls

* When adding `Materials` to a geometry template, please use the following syntax:
```matlab
material_object = Material.create( material_name_or_index_or_object );
this.add_material(material_object);
```
This is to ensure the same material object does not accumulate ghost domains from earlier, non-existing geometries. This could happen with the following syntax:
´´´matlab
material_object = PMlibrary.create('N35');
...
custom_template_1.add_material(material_object);
custom_template_2.add_material(material_object);
´´´
In this case, the `material_object´ would share domains from both `custom_template_1` and `custom_template_2`, resulting in errors at best; incorrect but non-erroneous behaviour at worst. This will
raise a warning in future versions of EMDtool.



# Why are my simulation results weird?

* Check the 'Meshing fails' steps first.

* Plot your mesh with e.g. `motor.visualize('linestyle', '-')` or the same
command for `rotor` or `stator` or whatever you are calling your
components. Pay special attention to the boundaries between Domains and
Surfaces: if there are non-matching nodes, you most likely have
non-unique Curves or Points, intersecting Curves, or T-junctions.

* Plot your airgap mesh with `motor.visualize('plot_ag', true)`. If it
looks weird, it's often a good idea to decrease the characteristic length
of one or both of the airgap-facing surfaces (e.g. the ID of stator).

* And, verify that you don't have flux lines escaping on
flux-insulation/Dirichlet boundaries. Remember, you have to name the
corresponding Curves 'n_dir' when making the geometry, or use the
geo.set_dirichlet method.

* Finally, verify that you have set periodic boundaries correctly, if
you're supposed to have any.

* Run a no-load static simulation at one rotor position only, plot
the resulting flux, and pay special attention to the flux lines. If they
are not continuous but instead end in the middle of the problem domain,
you again most likely have non-unique Curves.

* Run simpler simulations first to see if the problem persists or not.
For instance, torque vs. pole angle with static analysis and single rotor
position only, or torque vs. slip. Use the 'uniform coil current' supply
mode.

# Non-symmetric designs

The typical `EMDtool` geometry templates - subclasses of RadialGeometry
or AxialGeometry assume that the motor structure is symmetric. Meaning,
the geometry repeats perfectly over one slot pitch (or pole pitch in case
of rotors), with possible changes only in the remanence/domain
orientation or coil incidence.

For less-symmetric designs, you have (at the moment) a few options only.

For somewhat-nonsymmetric geometries, you'll have to determine (yourself)
the smallest symmetrical component and create the geometry for it.

For entirely unsymmetric geometries, you'll have to implement the entire
geometry yourself.

A notable example are electrically excited flux-switching motors where the stator
_geometry_ is fully symmetric, but some slots house the phase winding
(PolyphaseCircuit) while others house the field-winding. For this case,
the currently-best approach is the following:

* While making the slot-pitch geometry, create *two* PolyphaseCircuit
objects, and assing the same slot-domain to _both_. 

* Create two _custom_ PolyphaseWindingSpec subclasses, one for each
Circuit. Obviously, one is the phase winding and the other for the field
winding.

* Implement custom `get_loop_matrix` methods to the winding specs. Both
methods should return matrices with the same number of rows = the number
of meshed conductors in the entire motor (dim.symmetry_sectors=1).
However, some of the matrix rows should be *all-zero*: the rows
corresponding to the field winding conductors for the phase winding spec,
and vice versa.

Warning:
{: .label .label-red }

The above suggestion may cause issues, with the current implementation of the PolyphaseCircuit, as both will contain orphan Conductors. Handle with care.