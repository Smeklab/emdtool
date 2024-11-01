---
title : Release notes
nav_order: 4
---
# Release notes
* **3.0.44dev ** :  Started collecting release notes.
* **3.0.44dev ** :  Speed update to solid conductor loss computation. SolidConductor and SplitConductor classes updated.
* **3.0.44dev ** :  GeoBase Feasibility check (surface intersect) handles holes better
* **3.0.44dev ** :  Annotation functionality added.
* **3.0.44dev ** :  Added local_node_indices to MotorModelBase
* **3.0.44dev ** :  Fixed PolyphaseCircuit.mass; using root().symmetrySectors instead of dim.symmetry_sectors whenever possible
* **3.0.44dev ** :  Added phase-level circulating current loss computation.
* **3.0.44dev ** :  Fixed Delta-connected terminal current supply with multiple parallel strands.
* **3.0.44dev ** :  Added shaft option to MassivePM
* **3.0.44dev ** :  Thermal analysis added.
* **3.0.44dev ** :  field_compliant_name now handles periods (turns them into underscores
* **3.0.44dev ** :  Fixed one-sided periodic boundary interaction for ExtrudedBlockCircuit.
* **3.0.44dev ** :  Added phase advance angle to PolyphaseCircuit results summary.
* **3.0.44dev ** :  Added timestamps to MotorModelBase results summary.
* **3.0.44dev ** :  Added possibility to export waveforms with save_struct_to_excel
* **3.0.44dev ** :  LinearSynRotorBase template added.
* **3.0.44dev ** :  Fixed FieldWindingSpec to work on dims without .Qs
* **3.0.44dev ** :  Added Sleeve circuit to SPM1
* **3.0.44dev ** :  Slicing and skewing functionality added.
* **3.0.44dev ** :  ExtrudedBlockCircuit option to plot only some time-step losses.
* **3.0.44dev ** :  Fixed PolyphaseCircuit.get_lt_matrix method to work with solid conductors.
* **3.0.44dev ** :  ShortCircuit class now correctly handles parallel paths.
* **3.0.44dev ** :  DemagMaterial1 model added.
* **3.0.44dev ** :  Fixes to MTPAinterpolant1, handling discontinuous current contours
* **3.0.44dev ** :  Added SineTriangleModulator class.
* **3.0.44dev ** :  Added MagneticsProblem.new factory method for speed.
* **3.0.44dev ** :  Added continuous skewing to RFModelWithSkew.
* **3.0.44dev ** :  Removed extra replication of loop matrix from sliced CageCircuits.
* **3.0.44dev ** :  SMGridCalculator_NT_fromDQ now supports specifying an explicit speed range to simulate.
* **3.0.44dev ** :  Added min and max arguments to GeoBase.scale_mesh_density.
* **3.0.44dev ** :  Added solid core loss model support to SPM1.
* **3.0.44dev ** :  Added stack length scaling option to NTGridDC.
* **3.0.44dev ** :  Added option to plot rms current density with compute_SolidConductorLosses, used by most Circuits with solid conductors.
