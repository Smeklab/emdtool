---
title : force_on_domain_segments
parent: API
grand_parent : Documentation
---
# Summary for: **force_on_domain_segments**

**force_on_domain_segments** Limited-scope function for force computation.

data = **force_on_domain_segments**(solution, geometry, domains, 'angles',
angles) computes the electromagnetic forces acting on the given set of
domains ``domains`. The force is computed with the weighted Maxwell
stress tensor method, acting on such boundaries of the set of domains
that are shared with other domains in the geometry.
* The domains can be supplied either as [Domain](Domain.html) objects, or as char in
which case the domains are fetched  by their name with
geometry.domains.get(domains)
* The argument `geometry` should contain the parent geometry of the
domains.

For instance, for the prototypical use case of forces acting on the
stator teeth, the set of domains would consist of the stator
core-and-tooth segments. In this case, the outer surface would normally
consist of the stator tooth tips facing the airgap, and the tooth sides
facing the slots. For typical geometries, yoke side would NOT be included
in the force computation, unless the housing or yoke is included in the
electromagnetic model.

**** IMPORTANT** Please note that the stress tensor method only works when
the force-contributing surfaces are facing air (or close equivalent).
Thus, the set of domains should include all magnetically non-linear or
otherwise active domains in the geometry.

Next, the 'angles' argument defines how the set of domains is
sub-partitioned. For instance, for the default Stator geometry, the
angles vector should be
((1:(dim.Qs/dim.symmetry_sectors+1))-1)*2*pi/dim.Qs. What the function is
actually performing is first extracting the nodes on the
force-contributing surfaces, and then dividing them into subsets based on
the closest angular coordinate.

The function returns a structure of data with the following fields:
* Fx, Fy : x- and y-components of the force acting on the
force-contributing surfaces, partitioned according to the specified
angles. Each row correspond to a partition (e.g. tooth), and each
column corresponds to a time-step.
* Fx_parsed, Fy_parsed : x- and y-components parsed for the default
Stator-like case, i.e. with half teeth next to the periodic boundaries.
The parsed force components thus combine the forces acting on the first
and last half-tooth, to obtain the force acting on the first full
tooth. This parsing may produce nonsensical results for non-standard
applications.

Other call syntax options:
data = **force_on_domain_segments**(solution, geometry, domains) uses the
default-Stator-specific definition for the angles,
((1:(dim.Qs/dim.symmetry_sectors+1))-1)*2*pi/dim.Qs

data = **force_on_domain_segments**(solution, geometry) uses the default
domains 'Stator_core_*'.

