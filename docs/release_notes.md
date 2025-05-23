---
title : Release notes
nav_order: 4
---
# Release notes
* **3.0.44dev** :  Started collecting release notes.
* **3.0.44dev** :  Speed update to solid conductor loss computation. SolidConductor and SplitConductor classes updated.
* **3.0.44dev** :  GeoBase Feasibility check (surface intersect) handles holes better
* **3.0.44dev** :  Annotation functionality added.
* **3.0.44dev** :  Added local_node_indices to MotorModelBase
* **3.0.44dev** :  Fixed PolyphaseCircuit.mass; using root().symmetrySectors instead of dim.symmetry_sectors whenever possible
* **3.0.44dev** :  Added phase-level circulating current loss computation.
* **3.0.44dev** :  Fixed Delta-connected terminal current supply with multiple parallel strands.
* **3.0.44dev** :  Added shaft option to MassivePM
* **3.0.44dev** :  Thermal analysis added.
* **3.0.44dev** :  field_compliant_name now handles periods (turns them into underscores
* **3.0.44dev** :  Fixed one-sided periodic boundary interaction for ExtrudedBlockCircuit.
* **3.0.44dev** :  Added phase advance angle to PolyphaseCircuit results summary.
* **3.0.44dev** :  Added timestamps to MotorModelBase results summary.
* **3.0.44dev** :  Added possibility to export waveforms with save_struct_to_excel
* **3.0.44dev** :  LinearSynRotorBase template added.
* **3.0.44dev** :  Fixed FieldWindingSpec to work on dims without .Qs
* **3.0.44dev** :  Added Sleeve circuit to SPM1
* **3.0.44dev** :  Slicing and skewing functionality added.
* **3.0.44dev** :  ExtrudedBlockCircuit option to plot only some time-step losses.
* **3.0.44dev** :  Fixed PolyphaseCircuit.get_lt_matrix method to work with solid conductors.
* **3.0.44dev** :  ShortCircuit class now correctly handles parallel paths.
* **3.0.44dev** :  DemagMaterial1 model added.
* **3.0.44dev** :  Fixes to MTPAinterpolant1, handling discontinuous current contours
* **3.0.44dev** :  Added SineTriangleModulator class.
* **3.0.44dev** :  Added MagneticsProblem.new factory method for speed.
* **3.0.44dev** :  Added continuous skewing to RFModelWithSkew.
* **3.0.44dev** :  Removed extra replication of loop matrix from sliced CageCircuits.
* **3.0.44dev** :  SMGridCalculator_NT_fromDQ now supports specifying an explicit speed range to simulate.
* **3.0.44dev** :  Added min and max arguments to GeoBase.scale_mesh_density.
* **3.0.44dev** :  Added solid core loss model support to SPM1.
* **3.0.44dev** :  Added stack length scaling option to NTGridDC.
* **3.0.44dev** :  Added option to plot rms current density with compute_SolidConductorLosses, used by most Circuits with solid conductors.
* **3.0.45dev** :  Fixed PointSource AC losses being off by a factor of 1/symmetry_sectors
* **3.0.45dev** :  Added support for 2nd-order triangular elements.
* **3.0.45dev** :  Large refactor of mesh-element functionality, intended for better maintainability. Ongoing.
* **3.0.45dev** :  Added flexibility to SlidingAirgap airgap mesh generation.
* **3.0.45dev** :  Added the option to set the interpolation method and order for SlidingAirgapBase.
* **3.0.45dev** :  BreadLoafRotor fixed non-symmetric mesh density bug.
* **3.0.45dev** :  Stator class now supports splitting the core into tooth and yoke domains.
* **3.0.45dev** :  PolyphaseCircuit.losses now also returns the end-winding losses.
* **3.0.45dev** :  rms under utilities renamed to emdtool_rms.
* **3.0.45dev** :  Multiple code-styling errors (like non-reachable lines or redundant if-clauses fixed.
* **3.0.45dev** :  Fixed incorrect inductance computation (compute_inductances_static_averaging) for sliced models.
* **3.0.45dev** :  Fixed msh_fill for second-order elements. Added unroll_order to the plotted quantity.
* **3.0.45dev** :  WindingLayoutBase now supports multi-surface slots with stranded geometries.
* **3.0.45dev** :  Added .elements_in_layer method to SimpleExtrudedMesh.
* **3.0.45dev** :  Rotor slot objects now have to declare the has_slot_opening property.
* **3.0.45dev** :  SlottedRotor1 now supports slots without any opening at all (even virtual).
* **3.0.45dev** :  Added RotorSlot5 for deep double-cage-like rotors.
* **3.0.45dev** :  Zero normal stress boundary condition added to the CentrifugalStressProblem class.
* **3.0.45dev** :  AirgapThermalModel.calculate_heat_transfer_coefficient fixed saved Nusselt number (was kinematic viscosity). No influence on the heat transfer coeff.
* **3.0.45dev** :  Fixed BoundaryConnection flux post-processing bug.
* **3.0.45dev** :  Added methods for airgap flux density plotting to MotorModelBase and SlidingAirgapBase+subclasses.
* **3.0.45dev** :  Added CoolantMaterialBase classes for thermal analysis.
* **3.0.45dev** :  Added correction coefficients and recompute methods to ThermalModelElement subclasses.
* **3.0.45dev** :  AirgapThermalModel now estimates windage losses.
* **3.0.45dev** :  Added sensitivity analysis to ThermalModel.
* **3.0.45dev(2025/03/14)** :  Started including the date to release notes.
* **3.0.45dev(2025/03/14)** :  Repeated calls to MagneticsProblem.solve methods now reuse the same Jacobian constructor if available. Togglable by SimulationParameters.
* **3.0.45dev(2025/03/19)** :  The SpaceVectorModulator class now supports arbitrary phase counts (>1) and number of levels (>=2)
* **3.0.45dev(2025/04/03)** :  Simple analytical model added to DemagMaterial1.
* **3.0.45dev(2025/04/07)** :  Added important info on end-ring dimensions and symmetry to LinearSlottedRotor1 doc.
* **3.0.45dev(2025/04/08)** :  End-winding inductance calculation fixed for axial-flux machines with more than 1 axial symmetry sector. Expect changes.
* **3.0.45dev(2025/04/15)** :  Removed stacking factor parsing from Material.init_for_problem; now using the inherited functionality from MaterialBase.stacking_factor getter method.
* **3.0.45dev(2025/04/28)** :  Fixed bug caused by loading older SMGridCalculator_DQ data, without excess iron losses computed.
* **3.0.45dev(2025/04/29)** :  Fixed SpaceVectorModulator bug. Now more-closely matches SVPWM_Modulator.
