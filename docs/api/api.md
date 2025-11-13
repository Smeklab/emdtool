---
layout: default
title: API
nav_order: 2
parent: Documentation
has_children: true
has_toc : false
---
# API reference
* *class* : [emdtool](emdtool.html)  **emdtool** Main EMDtool utility class.
## Analysis utilities
 Folder with the following files / classes / subfolders:

* *function* : [Analysis utilities/Pre-processing/calculate_EW_length](calculate_EW_length.html)  **calculate_EW_length** Calculate approximate axial length of end-winding.
* *function* : [Analysis utilities/Pre-processing/calculate_turn_length](calculate_turn_length.html)  **calculate_turn_length** Set turn length for standard distributed winding.
* *function* : [Analysis utilities/Pre-processing/calculate_turn_length_axial](calculate_turn_length_axial.html)  **calculate_turn_length_axial** Calculate turn length of an axial-flux
* *function* : [Analysis utilities/Pre-processing/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Analysis utilities/Pre-processing/get_periodicityFactor](get_periodicityFactor.html)  **get_periodicityFactor** returns the periodicity factor.
* *function* : [Analysis utilities/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Analysis utilities/estimate_AC_copper_losses](estimate_AC_copper_losses.html)  **estimate_AC_copper_losses** AC loss calculation using a post-processing
* *function* : [Analysis utilities/estimate_AC_copper_losses_rectangular](estimate_AC_copper_losses_rectangular.html)  estimate_AC_copper_losses AC loss calculation using a post-processing
* *function* : [Analysis utilities/maximum_demag_field](maximum_demag_field.html)  **maximum_demag_field** Maximum instantaneous demagnetization field across geometry.
* *class* : [Analysis utilities/Equivalent Circuits/InverseGammaCircuit](InverseGammaCircuit.html) **InverseGammaCircuit** methods:
* *class* : [/Equivalent Circuits/SynEquivalentCircuit](SynEquivalentCircuit.html) **SynEquivalentCircuit** methods:
* *class* : [IMEquivalentCircuit](IMEquivalentCircuit.html) **IMEquivalentCircuit** is a class.
* *class* : [/Grids/MTPAinterpolant](MTPAinterpolant.html)  **MTPAinterpolant** Interpolant for post-processing field-weakening
* *class* : [/Grids/NTGrid](NTGrid.html) **NTGrid** methods:
* *class* : [/Grids/NTGridDQ](NTGridDQ.html)  **NTGridDQ** Speed-torque grid from d-q grid data.
* *class* : [/Grids/NTGridNT](NTGridNT.html)  
* *class* : [/Grids/OPsimulator](OPsimulator.html)  **OPsimulator** Class for analysing operating points.
* *class* : [/Grids/SMGridCalculator_DQ](SMGridCalculator_DQ.html)  **SMGridCalculator_DQ** DQ-grid calculator for synchronous machines.
* *class* : [/Grids/SMGridCalculator_NT](SMGridCalculator_NT.html)  **SMGridCalculator_NT** (rpm, T) operating point grid calculator.
* *class* : [/Grids/SMGridCalculator_NTfromDQ](SMGridCalculator_NTfromDQ.html) **SMGridCalculator_NTfromDQ** methods:
* *class* : [OPiterator](OPiterator.html)  **OPiterator** Backward compatibility proxy class.
## FE Functionality
 Folder with the following files / classes / subfolders:

* *function* : [FE Functionality/Elements and Shape Functions/Nodal Elements/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Elements and Shape Functions/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Elements and Shape Functions/mappingTerms](mappingTerms.html)  **mappingTerms**.
* *function* : [FE Functionality/Matrix Assembly/FEdotProduct](FEdotProduct.html)  dotProduct vectorized dot product for FE matrix assembly.
* *function* : [FE Functionality/Matrix Assembly/assemble_TotalMasterSlaveMatrix](assemble_TotalMasterSlaveMatrix.html)  **assemble_TotalMasterSlaveMatrix** elimination matrix for master-slave
* *function* : [FE Functionality/Matrix Assembly/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Matrix Assembly/crossProduct](crossProduct.html)  **crossProduct** Cross product in 2D or 3D.
* *function* : [FE Functionality/Matrix Assembly/dotProduct](dotProduct.html)  **dotProduct** vectorized dot product.
* *function* : [FE Functionality/Matrix Assembly/get_1DQuadPoints](get_1DQuadPoints.html)  internal_getQuadPoints returns 1D Gaussian quadrature points;
* *function* : [FE Functionality/Matrix Assembly/get_1DQuadPoints_10](get_1DQuadPoints_10.html)  **get_1DQuadPoints_10** Quadrature points for [0,1]
* *function* : [FE Functionality/Matrix Assembly/get_2DtriangleIntegrationPoints](get_2DtriangleIntegrationPoints.html)  **get_2DtriangleIntegrationPoints** Gaussian quadrature points and weights.
* *function* : [FE Functionality/Matrix Assembly/get_AssemblyParameters](get_AssemblyParameters.html) **get_AssemblyParameters** is a function.
* *function* : [FE Functionality/Matrix Assembly/matrixDeterminant](matrixDeterminant.html)  **matrixDeterminant**3D Matrix determinant (3x3).
* *function* : [FE Functionality/Matrix Assembly/matrixTimesVector](matrixTimesVector.html) **matrixTimesVector** is a function.
* *function* : [FE Functionality/Matrix Assembly/sparseAdd](sparseAdd.html)  **sparseAdd** add entries to the sparse matrix struct.
* *function* : [FE Functionality/Matrix Assembly/sparseFinalize](sparseFinalize.html)  **sparseFinalize** assemble sparse matrix from sparse struct.
* *function* : [FE Functionality/Matrix Assembly/sparsediag](sparsediag.html)  **sparsediag** sparse diagonal matrix.
* *function* : [FE Functionality/Mesh/Airgap mesh/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Mesh/Airgap mesh/singleLayerAGtriangulation_2](singleLayerAGtriangulation_2.html)  singleLayerAGtriangulation Single-layer air-gap triangulation.
* *function* : [FE Functionality/Mesh/Airgap mesh/singleLayerAGtriangulation_2nd](singleLayerAGtriangulation_2nd.html)  singleLayerAGtriangulation Single-layer air-gap triangulation.
* *function* : [FE Functionality/Mesh/Mesh utilities/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Mesh/Mesh utilities/edge_defitions_to_edges](edge_defitions_to_edges.html)  **edge_defitions_to_edges** returns edge indices corresponding to edge definitions
* *function* : [FE Functionality/Mesh/Mesh utilities/parse_trimesh_incidence](parse_trimesh_incidence.html) **parse_trimesh_incidence** is a function.
* *function* : [FE Functionality/Mesh/Mesh utilities/points_to_elements_and_coordinates](points_to_elements_and_coordinates.html)  pointSources2Elements_faster generates point-wise data for mesh.
* *function* : [FE Functionality/Mesh/Mesh utilities/sortRadialEdges](sortRadialEdges.html)  sortSegmentEdges sorts nodes of circumferentially.
* *function* : [FE Functionality/Mesh/Mesh utilities/sortSegmentEdges](sortSegmentEdges.html)  **sortSegmentEdges** sorts nodes of circumferentially.
* *function* : [FE Functionality/Mesh/Mesh utilities/sortXEdges](sortXEdges.html)  sortSegmentEdges sorts nodes according to x coordinate.
* *function* : [FE Functionality/Mesh/Mesh utilities/sortYEdges](sortYEdges.html)  sortSegmentEdges sorts nodes according to y coordinate.
* *function* : [FE Functionality/Mesh/Meshes_3D/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Mesh/Meshes_3D/get_PrismIntegrationPoints](get_PrismIntegrationPoints.html)  **get_PrismIntegrationPoints** Quadrature points for a unit prism.
* *function* : [FE Functionality/Mesh/Other meshes/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/Mesh/Other meshes/getEdges](getEdges.html)  **getEdges** returns the edge definition.
* *function* : [FE Functionality/Mesh/Other meshes/order_t2e](order_t2e.html)  **order_t2e** orders the triangles-to-edges matrix.
* *function* : [FE Functionality/Mesh/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [FE Functionality/contents](contents.html)  Folder with the following files / classes / subfolders:
* *class* : [FE Functionality/Elements and Shape Functions/Elements/ElementBase](ElementBase.html)  Elements **ElementBase** class for finite element implementation
* *class* : [Prism1](Prism1.html)  **Prism1** Simple z-extruded prism.
* *class* : [Prism2](Prism2.html) **Prism2** is a class.
* *class* : [Quad1](Quad1.html) **Quad1** is a class.
* *class* : [Tet1](Tet1.html) **Tet1** is a class.
* *class* : [Triangle1](Triangle1.html) **Triangle1** is a class.
* *class* : [Triangle2I](Triangle2I.html) **Triangle2I** is a class.
* *class* : [Elements](Elements.html)  **Elements** Enumeration of element types
* *class* : [IDfun](IDfun.html) **IDfun** is a class.
* *class* : [Nedelec2D](Nedelec2D.html)  **Nedelec2D** class for 2D Nedelec shape functions.
* *class* : [Nedelec3DPrism](Nedelec3DPrism.html)  Nedelec3D class for 3D Nedelec shape functions.
* *class* : [/Elements and Shape Functions/Nodal Elements/Nodal1D](Nodal1D.html)  **Nodal1D** 1D nodal element.
* *class* : [/Elements and Shape Functions/Nodal Elements/Nodal2D](Nodal2D.html)   **Nodal2D** Lagrange (nodal) shape function in 2D.
* *class* : [Operators](Operators.html)  {
* *class* : [/Matrix Assembly/BoundaryMatrixConstructor](BoundaryMatrixConstructor.html) **BoundaryMatrixConstructor** methods:
* *class* : [/Matrix Assembly/MagneticsJacobian](MagneticsJacobian.html)  **MagneticsJacobian** Jacobian constructor for magnetic problems.
* *class* : [/Matrix Assembly/MatrixConstructor](MatrixConstructor.html)  **MatrixConstructor** Constructor for FE matrices.
* *class* : [MatrixConstructorBase](MatrixConstructorBase.html) **MatrixConstructorBase** is a class.
* *class* : [MatrixConstructor_nonConforming](MatrixConstructor_nonConforming.html) **MatrixConstructor_nonConforming** is a class.
* *class* : [/Mesh/Boundary](Boundary.html)  **Boundary** Base class for boundaries.
* *class* : [/Mesh/DirichletBoundary](DirichletBoundary.html) **DirichletBoundary** methods:
* *class* : [/Mesh/MeshBase](MeshBase.html) **MeshBase** methods:
* *class* : [/Mesh/MeshBaseInterface](MeshBaseInterface.html)  **MeshBaseInterface** High-level interface definitions for a mesh class.
* *class* : [/Mesh/PeriodicBoundary](PeriodicBoundary.html) **PeriodicBoundary** methods:
* *class* : [/Mesh/Airgap mesh/LinearSlidingAirgap](LinearSlidingAirgap.html)  **LinearSlidingAirgap** Airgap class for sliced AFM models.
* *class* : [/Mesh/Airgap mesh/SlidingAirgap](SlidingAirgap.html)  **SlidingAirgap** Sliding airgap model for radial-flux machines.
* *class* : [/Mesh/Airgap mesh/SlidingAirgapBase](SlidingAirgapBase.html)  **SlidingAirgapBase** Base class for airgaps.
* *class* : [Airgap](Airgap.html)  **Airgap** Base class for airgap geometries.
* *class* : [/Mesh/Mesh Generation/MatlabMesher](MatlabMesher.html) **MatlabMesher** methods:
* *class* : [/Mesh/Mesh Generation/MesherBase](MesherBase.html) **MesherBase** methods:
* *class* : [/Mesh/Mesh Generation/gw](gw.html) **gw** methods:
* *class* : [MeshView](MeshView.html) **MeshView** is a class.
* *class* : [/Mesh/Meshes_3D/ExtrudedPrismMesh](ExtrudedPrismMesh.html)  **ExtrudedPrismMesh** Class for extruded prism meshes.
* *class* : [/Mesh/Meshes_3D/Nodal3D](Nodal3D.html) **Nodal3D** methods:
* *class* : [/Mesh/Meshes_3D/SimpleExtrudedMesh](SimpleExtrudedMesh.html)  **SimpleExtrudedMesh** Simple extruded mesh.
* *class* : [/Mesh/Meshes_3D/TetMesh](TetMesh.html)  **TetMesh** minimal mesh of 3D tetrahedrons.
* *class* : [MeshBase3D](MeshBase3D.html)  **MeshBase3D** a base class for some 3D meshes
* *class* : [Nodal3D_UpExtruded](Nodal3D_UpExtruded.html) **Nodal3D_UpExtruded** is a class.
* *class* : [Nodal3D_extruded](Nodal3D_extruded.html)  **Nodal3D_extruded** Nodal shape function for extruded elements.
* *class* : [PrismMeshBase3D](PrismMeshBase3D.html)  **PrismMeshBase3D** A base class for a 3D mesh with prismatic elements.
* *class* : [/Mesh/Other meshes/EdgeMesh](EdgeMesh.html)  **EdgeMesh** Mesh class for representing edges.
* *class* : [/Mesh/Other meshes/Mesh](Mesh.html)  **Mesh** Class for mesh objects.
* *class* : [/Mesh/Other meshes/SimpleMesh](SimpleMesh.html)  **SimpleMesh** Basic mesh class.
* *class* : [RotatedMeshView](RotatedMeshView.html) **RotatedMeshView** is a class.
## Geometry
 Folder with the following files / classes / subfolders:

* *function* : [Geometry/Geometry representation/Origin](Origin.html)  **Origin** Create a <Point> at origin.
* *function* : [Geometry/Geometry representation/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Geometry/Motor geometries/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Geometry/contents](contents.html)  Folder with the following files / classes / subfolders:
* *class* : [Geometry/Circle](Circle.html)  **Circle** Helper class for circular surfaces.
* *class* : [Domain](Domain.html)  **Domain** **Domain** class.
* *class* : [GeoBase](GeoBase.html)  **GeoBase** Base class for geometries.
* *class* : [LaminatedDomain](LaminatedDomain.html)  **LaminatedDomain** Laminated domain.
* *class* : [Surface](Surface.html)  SURFACE Class for representing elementary surfaces.
* *class* : [/ representation/Arc](Arc.html) **Arc** methods:
* *class* : [/ representation/Curve](Curve.html)  CURVE Abstract base class for representing line segments and circle arcs
* *class* : [/ representation/Line](Line.html) **Line** methods:
* *class* : [/ representation/Point](Point.html)  POINT Class for representing points in a geometry.
* *class* : [/ representation/geo](geo.html)  enumeration
* *class* : [/Motor geometries/AxialGeometry](AxialGeometry.html)  **AxialGeometry** Base class for 2D axial / linear geometries.
* *class* : [/Motor geometries/RadialGeometry](RadialGeometry.html)  **RadialGeometry** Base class for radial geometries.
## Materials
 Folder with the following files / classes / subfolders:

* *function* : [Materials/Analytical functions/H_langevin_single](H_langevin_single.html)  **H_langevin_single** Analytical H(B) function.
* *function* : [Materials/Analytical functions/b_langevin_single](b_langevin_single.html)  **b_langevin_single** Analytical B(H) function.
* *function* : [Materials/Analytical functions/m_langevin_single](m_langevin_single.html)  **m_langevin_single** Analytical M(H) function.
* *function* : [Materials/Fitting functions/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Materials/Fitting functions/derivate_pp](derivate_pp.html)  **derivate_pp** derivates a piecewise-defined polynomial
* *function* : [Materials/Fitting functions/err_double_langeving](err_double_langeving.html) **err_double_langeving** is a function.
* *function* : [Materials/Fitting functions/err_steinmetz](err_steinmetz.html) **err_steinmetz** is a function.
* *function* : [Materials/Fitting functions/err_steinmetz_TD](err_steinmetz_TD.html) **err_steinmetz_TD** is a function.
* *function* : [Materials/Fitting functions/err_steinmetz_hystonly](err_steinmetz_hystonly.html) **err_steinmetz_hystonly** is a function.
* *function* : [Materials/Iron losses/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Materials/Iron losses/frequency_domain_Bertotti](frequency_domain_Bertotti.html)  **frequency_domain_Bertotti** Compute iron losses with freq-domain Bertotti
* *function* : [Materials/Iron losses/time_domain_Steinmetz](time_domain_Steinmetz.html)  **time_domain_Steinmetz** Iron losses from time-domain Steinmetz model.
* *function* : [Materials/Materials/Arnon5](Arnon5.html)  **Arnon5** Construct Arnon5 material object
* *function* : [Materials/Materials/M250_35A](M250_35A.html)  **M250_35A** Construct M250-35A material object
* *function* : [Materials/Materials/NO12](NO12.html)  **NO12** Construct NO12 material object
* *function* : [Materials/Materials/NO20](NO20.html)  **NO20** Construct NO20 material object
* *function* : [Materials/Materials/Permalloy65](Permalloy65.html)  Vacodur49 Create Vacodur49 material object.
* *function* : [Materials/Materials/S275N](S275N.html)  **S275N** S275N steel from very limited BH-data.
* *function* : [Materials/Materials/Somaloy_HR700_3p](Somaloy_HR700_3p.html)  **Somaloy_HR700_3p** Somaloy material object.
* *function* : [Materials/Materials/Vacodur49](Vacodur49.html)  **Vacodur49** Create Vacodur49 material object.
* *function* : [Materials/Materials/YS550](YS550.html)  **YS550** YS550 steel from very limited BH-data.
* *function* : [Materials/Materials/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Materials/Materials/get_defaultMaterials](get_defaultMaterials.html)  **get_defaultMaterials** Returns the BH curve for old built-in materials
* *function* : [Materials/Materials/get_materialData](get_materialData.html)  **get_materialData** Get material data struct.
* *function* : [Materials/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Materials/skindepth](skindepth.html)  **skindepth** Skin depth of material.
* *class* : [Materials/InhomogeneousMaterial](InhomogeneousMaterial.html)  **InhomogeneousMaterial** Inhomogeneous material properties class.
* *class* : [Material](Material.html)  **Material** Basic isotropic material class.
* *class* : [MaterialBase](MaterialBase.html)  **MaterialBase** Base class for materials.
* *class* : [/Hysteretic materials, WIP/HysteresisModel](HysteresisModel.html)  **HysteresisModel** Base class for hysteresis models.
* *class* : [/Hysteretic materials, WIP/HystereticMaterial](HystereticMaterial.html)  **HystereticMaterial** Material class for hysteretic materials.
* *class* : [/Hysteretic materials, WIP/HysteronModel](HysteronModel.html)  **HysteronModel** Base class for vector hysteron models
* *class* : [/Hysteretic materials, WIP/PlayModel](PlayModel.html)  **PlayModel** Play hysteron model.
* *class* : [/Hysteretic materials, WIP/StopModel](StopModel.html)  **StopModel** Hysteresis model based on Stop hysteron.
* *class* : [MaterialSet](MaterialSet.html)  **MaterialSet** Container class.
* *class* : [//SteelLibrary](SteelLibrary.html)  **SteelLibrary** Static class for creating electrical steel Material
* *class* : [Arnon7](Arnon7.html)  **Arnon7** **Arnon7** Material object.
* *class* : [PMlibrary](PMlibrary.html)  **PMlibrary** Static class for creating permanent-magnet Material objects.
* *class* : [/Permanent magnet material models/DemagMaterial1](DemagMaterial1.html)  **DemagMaterial1** Simple demagnetizable magnet material model.
## Problems
 Folder with the following files / classes / subfolders:

* *function* : [Problems/Magnetics/Post-processing/calculate_B](calculate_B.html)  **calculate_B** calculates flux density.
* *function* : [Problems/Magnetics/Post-processing/compute_inductances_static_averaging](compute_inductances_static_averaging.html)  **compute_inductances_static_averaging** Inductanc computation.
* *function* : [Problems/Magnetics/Post-processing/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Problems/Magnetics/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Problems/contents](contents.html)  Folder with the following files / classes / subfolders:
* *class* : [Problems/Magnetics/MagneticsProblem](MagneticsProblem.html)  **MagneticsProblem** Class for solving magnetics problems.
* *class* : [HarmonicSolution](HarmonicSolution.html) **HarmonicSolution** is a class.
* *class* : [MagneticsSolution](MagneticsSolution.html)  **MagneticsSolution** Class for representing the solution to MagneticsProblem.
* *class* : [SimulationParameters](SimulationParameters.html)  **SimulationParameters** Parameters for MagneticsProblem solutions.
* *class* : [StaticSolution](StaticSolution.html) **StaticSolution** is a class.
* *class* : [SteppingSolution](SteppingSolution.html) **SteppingSolution** is a class.
* *class* : [/Mechanics/CentrifugalStressProblem](CentrifugalStressProblem.html)  **CentrifugalStressProblem** Class for simple centrifugal stress problems.
* *class* : [/Mechanics/CentrifugalStressSolution](CentrifugalStressSolution.html)  **CentrifugalStressSolution** Solution of a centrifugal stress problem.
* *class* : [/Thermals/Analysis/Connections/BoundaryConnection](BoundaryConnection.html)  **BoundaryConnection** Basic heat transfer boundary.
* *class* : [/Thermals/Analysis/Connections/Node2NodeConnection](Node2NodeConnection.html)  **Node2NodeConnection** Textbook connection between two nodes.
* *class* : [/Thermals/Analysis/Connections/ThermalNetworkConnection](ThermalNetworkConnection.html)  **ThermalNetworkConnection** Abstract base class for connections.
* *class* : [/Thermals/Analysis/Connections/VolumeConnection](VolumeConnection.html)  **VolumeConnection** Connection between heat generation and external nodes.
* *class* : [/Thermals/Analysis/Model and solutions/SteadyStateThermalSolution](SteadyStateThermalSolution.html)  **SteadyStateThermalSolution** Steady-state thermal solution.
* *class* : [/Thermals/Analysis/Model and solutions/ThermalModel](ThermalModel.html)  **ThermalModel** Basic model-problem class for thermal problems.
* *class* : [/Thermals/Analysis/Model and solutions/ThermalModelElement](ThermalModelElement.html)  **ThermalModelElement** Base class for thermal model components.
* *class* : [/Thermals/Analysis/Model and solutions/ThermalSolution](ThermalSolution.html)  **ThermalSolution** Base class for thermal solutions.
* *class* : [/Thermals/Analysis/Nodes/AmbientNode](AmbientNode.html)  **AmbientNode** Class for fixed-temperature nodes.
* *class* : [/Thermals/Analysis/Nodes/AverageTempNode](AverageTempNode.html)  MaxTempNode Dummy-like node for picking the maximum temperature.
* *class* : [/Thermals/Analysis/Nodes/InterpolatingThermalNode](InterpolatingThermalNode.html)  **InterpolatingThermalNode** Linearly-dependent node.
* *class* : [/Thermals/Analysis/Nodes/MaxTempNode](MaxTempNode.html)  **MaxTempNode** Dummy-like node for picking the maximum temperature.
* *class* : [/Thermals/Analysis/Nodes/PlusDiffNode](PlusDiffNode.html)  **PlusDiffNode** Linear combination node
* *class* : [/Thermals/Analysis/Nodes/ThermalNode](ThermalNode.html)  **ThermalNode** General class for textbook thermal node.
* *class* : [/Thermals/Analysis/Nodes/WeightedAverageNode](WeightedAverageNode.html)  **WeightedAverageNode** Weighted temperature average.
* *class* : [/Thermals/Materials/SimpleCoolantMaterial](SimpleCoolantMaterial.html) **SimpleCoolantMaterial** methods:
* *class* : [CoolantMaterialBase](CoolantMaterialBase.html) **CoolantMaterialBase** is a class.
* *class* : [ThermalConstants](ThermalConstants.html) **ThermalConstants** is a class.
* *class* : [/Thermals/RF_specific_components/AirgapThermalModel](AirgapThermalModel.html)  **AirgapThermalModel** Simple model for airgap heat transfer.
* *class* : [/Thermals/RF_specific_components/CoolingChannelModel](CoolingChannelModel.html)  **CoolingChannelModel** Convenience model for cooling channels.
* *class* : [/Thermals/RF_specific_components/FlowHeatSinkConnection](FlowHeatSinkConnection.html)  **FlowHeatSinkConnection** Coolant flow acting as a heat sink.
* *class* : [/Thermals/RF_specific_components/RFThermalModel](RFThermalModel.html)  **RFThermalModel** Simple thermal model for radial-flux machines.
* *class* : [/Thermals/RF_specific_components/SimpleJacketThermalModel](SimpleJacketThermalModel.html)  **SimpleJacketThermalModel** Simple model for cooling jacket.
* *class* : [/Thermals/RF_specific_components/StrandedWindingThermalModel](StrandedWindingThermalModel.html)  **StrandedWindingThermalModel** Class for stranded windings.
## Templates
 Folder with the following files / classes / subfolders:

* *function* : [Templates/Annotations/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Templates/Rotors/+FluidBarrier/geospace](geospace.html) **geospace** is a function.
* *function* : [Templates/Rotors/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Templates/Stators/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [Templates/contents](contents.html)  Folder with the following files / classes / subfolders:
* *class* : [Templates/AFmodel](AFmodel.html)  only types given?
* *class* : [LinearGeoBase](LinearGeoBase.html) **LinearGeoBase** methods:
* *class* : [RFmodel](RFmodel.html)  **RFmodel** Simple class for radial-flux machines.
* *class* : [/Annotations/Annotable](Annotable.html)  **Annotable** Base class for annotable geometries.
* *class* : [/Annotations/AnnotationBase](AnnotationBase.html)  **AnnotationBase** Base class for annotations.
* *class* : [/Annotations/CurveAnnotation](CurveAnnotation.html)  **CurveAnnotation** Class for curve annotations.
* *class* : [LayoutCompatible](LayoutCompatible.html)  **LayoutCompatible** Base class for templates compatible with the
* *class* : [/Rotors/BreadloafRotor](BreadloafRotor.html)  **BreadloafRotor** Template for rotors with breadloaf PMs.
* *class* : [/Rotors/ClassicIPM](ClassicIPM.html)  **ClassicIPM** High-speed / industrial style IPM rotor.
* *class* : [/Rotors/CoatedRotor](CoatedRotor.html)  **CoatedRotor** Rotor with a conductive coat/sleeve.
* *class* : [/Rotors/FWRotor1](FWRotor1.html)  **FWRotor1** Template for a rotor with field-winding.
* *class* : [/Rotors/FluidBarrierRotor](FluidBarrierRotor.html)  **FluidBarrierRotor** Fluid barrier rotor.
* *class* : [/Rotors/HSIPM](HSIPM.html)  **HSIPM** High-speed IPM rotor
* *class* : [/Rotors/HSIPM1](HSIPM1.html)  **HSIPM1** Deprecated class.
* *class* : [/Rotors/HSIPM2](HSIPM2.html)  **HSIPM2** Deprecated
* *class* : [/Rotors/HSSPM](HSSPM.html)  **HSSPM** Flexible high-speed SPM rotor.
* *class* : [/Rotors/LinearSPM](LinearSPM.html) **LinearSPM** methods:
* *class* : [/Rotors/LinearSlottedRotor1](LinearSlottedRotor1.html)  **LinearSlottedRotor1** Super-simple slotted AF rotor.
* *class* : [/Rotors/LinearSlottedRotorBase](LinearSlottedRotorBase.html) **LinearSlottedRotorBase** methods:
* *class* : [/Rotors/LinearSynRotorBase](LinearSynRotorBase.html) **LinearSynRotorBase** methods:
* *class* : [/Rotors/MassivePM](MassivePM.html)  **MassivePM** Template for massive-PM rotors.
* *class* : [/Rotors/PoledIPM1](PoledIPM1.html) **PoledIPM1** methods:
* *class* : [/Rotors/PoledIPM2](PoledIPM2.html)  **PoledIPM2** Simple IPM model with a salient pole.
* *class* : [/Rotors/SPM1](SPM1.html)  **SPM1** Template for a surface-PM rotor.
* *class* : [/Rotors/SPM2](SPM2.html)  **SPM2** Template for a surface-PM rotor.
* *class* : [/Rotors/SRMRotor1](SRMRotor1.html)  **SRMRotor1** Switched-reluctance / FSM type salient rotor
* *class* : [/Rotors/ShieldedSPM](ShieldedSPM.html) **ShieldedSPM** methods:
* *class* : [/Rotors/SlottedRotor1](SlottedRotor1.html)  **SlottedRotor1** Simple template for a slotted rotor.
* *class* : [/Rotors/SpokeRotor1](SpokeRotor1.html)  default dimensions
* *class* : [/Rotors/SynRMrotor1](SynRMrotor1.html) **SynRMrotor1** methods:
* *class* : [/Rotors/VIPM1](VIPM1.html)  **VIPM1** V-shape IPM rotor.
* *class* : [SlottedRotorBase](SlottedRotorBase.html)  **SlottedRotorBase** Base class for slotted radial-flux rotors.
* *class* : [SynRotorBase](SynRotorBase.html)  **SynRotorBase** Base class for synchronous machine rotors.
* *class* : [/Slicing/Sliced Models/AFModelWithSkew](AFModelWithSkew.html)  RFModelWithSkew Skewed and sliced radial-flux model.
* *class* : [/Slicing/Sliced Models/RFModelWithSkew](RFModelWithSkew.html)  **RFModelWithSkew** Skewed and sliced radial-flux model.
* *class* : [/Slicing/Sliced Models/SlicedMotorModel](SlicedMotorModel.html)  **SlicedMotorModel** Base class for sliced motor models.
* *class* : [/Slicing/Slices/AFSlice](AFSlice.html) **AFSlice** methods:
* *class* : [/Slicing/Slices/ModelSlice](ModelSlice.html)  **ModelSlice** Base class for representing slices.
* *class* : [/Slicing/Slices/RFSlice](RFSlice.html)  **RFSlice** Slice class for radial-flux machines.
* *class* : [/Slots/CooledSlot1](CooledSlot1.html) **CooledSlot1** methods:
* *class* : [/Slots/FloodedSlot1](FloodedSlot1.html) **FloodedSlot1** methods:
* *class* : [/Slots/RotorSlot1](RotorSlot1.html)  **RotorSlot1** Rotor slot shape 1.
* *class* : [/Slots/RotorSlot2](RotorSlot2.html)  **RotorSlot2** Rotor slot shape 2.
* *class* : [/Slots/RotorSlot3](RotorSlot3.html)  **RotorSlot3** Rotor slot shape 3.
* *class* : [/Slots/RotorSlot4](RotorSlot4.html)  **RotorSlot4** Completely rectangular rotor slot shape.
* *class* : [/Slots/RotorSlot5](RotorSlot5.html)  **RotorSlot5** Simple double-ish cage slot type.
* *class* : [/Slots/Slot1](Slot1.html)  **Slot1** Basic stator slot shape.
* *class* : [/Slots/Slot1b](Slot1b.html)  **Slot1b** A successor of the Slot1 class, with multiple slot openings.
* *class* : [/Slots/SlotShapeBase](SlotShapeBase.html)  **SlotShapeBase** Base class for slot shapes.
* *class* : [/Slots/StatorSlotShape](StatorSlotShape.html)  SlotShapeBase Base class for slot shapes.
* *class* : [/Slots/WoundSlot](WoundSlot.html)  **WoundSlot** Base class for slots supporting automatic winding generation.
* *class* : [RotorSlotShape](RotorSlotShape.html)  **RotorSlotShape** Base class for rotor slots.
* *class* : [SlotShapeBase](SlotShapeBase.html)  **SlotShapeBase** Base class for slot shapes.
* *class* : [SlotShapeWrapper](SlotShapeWrapper.html)  **SlotShapeWrapper** A wrapper class for one-off slot geometries.
* *class* : [/Stators/AFStator](AFStator.html)  **AFStator** Axial stator template
* *class* : [/Stators/AFStatorBase](AFStatorBase.html)  **AFStatorBase** Base class for axial-flux stators
* *class* : [/Stators/FormWound1](FormWound1.html) **FormWound1** methods:
* *class* : [/Stators/LinearStator](LinearStator.html) **LinearStator** methods:
* *class* : [/Stators/OutrunnerFrame](OutrunnerFrame.html) **OutrunnerFrame** methods:
* *class* : [/Stators/PCBStator](PCBStator.html) **PCBStator** methods:
* *class* : [/Stators/SlotlessStator](SlotlessStator.html)  **SlotlessStator** Simple class for slotless stators.
* *class* : [/Stators/Standard](Standard.html) **Standard** methods:
* *class* : [/Stators/Stator](Stator.html)  **Stator** General-purpose stator class for symmetric slotted stators.
* *class* : [/Stators/StatorBase](StatorBase.html)  **StatorBase** Base class for radial-flux stators.
* *class* : [/Stators/YASAStator](YASAStator.html)  **YASAStator** Axial yokeless stator.
## Third-party
* *class* : [DXFtool](DXFtool.html)   **DXFtool** v1.0 for reading and plotting DXF files in Matlab figures.
## Windings and Circuits
* *class* : [/Circuit Analysis/CircuitGraph](CircuitGraph.html) **CircuitGraph** methods:
* *class* : [/Circuit Analysis/ConcentratedWindingSpec](ConcentratedWindingSpec.html) **ConcentratedWindingSpec** methods:
* *class* : [/Circuit Analysis/DistributedWindingSpec](DistributedWindingSpec.html)  **DistributedWindingSpec** Winding specification class for distributed
* *class* : [/Circuit Analysis/FieldWindingSpec](FieldWindingSpec.html)  **FieldWindingSpec** Winding specification object for field-windings.
* *class* : [/Circuit Analysis/PolyphaseWindingSpec](PolyphaseWindingSpec.html)  **PolyphaseWindingSpec** Winding specification class.
* *class* : [/Circuit Analysis/SpaceVectors](SpaceVectors.html)  **SpaceVectors** Class for handling generalized Park-Clarke and inverse
* *class* : [/Circuit Analysis/WindingLayout](WindingLayout.html)  **WindingLayout** Factory class for winding layout matrices.
* *class* : [ParkClarke](ParkClarke.html)  **ParkClarke** Legacy compatibility class.
* *class* : [/FE Circuits/CageCircuit](CageCircuit.html) **CageCircuit** methods:
* *class* : [/FE Circuits/Circuit](Circuit.html)  **Circuit** Simple base class for circuits modelled with the AVI
* *class* : [/FE Circuits/ExtrudedBlockCircuit](ExtrudedBlockCircuit.html)  **ExtrudedBlockCircuit** Circuit for massive conductor blocks.
* *class* : [/FE Circuits/LaminatedCircuit](LaminatedCircuit.html)  **LaminatedCircuit** Class for modelling classical eddy currents in
* *class* : [/FE Circuits/PolyphaseCircuit](PolyphaseCircuit.html)  **PolyphaseCircuit** Class for finite-element representation of polyphase
* *class* : [BlockCircuit](BlockCircuit.html)  **BlockCircuit** Circuit for single massive conductors.
* *class* : [CircuitBase](CircuitBase.html)  **CircuitBase** Abstract base class for finite-element Circuits.
* *class* : [CircuitSet](CircuitSet.html)  **CircuitSet** Class for handling operations on several circuits.
* *class* : [Circuits](Circuits.html) **Circuits** is a class.
* *class* : [/FE Circuits/Conductors/PointConductor](PointConductor.html) **PointConductor** methods:
* *class* : [/FE Circuits/Conductors/SolidConductor](SolidConductor.html) **SolidConductor** methods:
* *class* : [/FE Circuits/Conductors/SplitConductor](SplitConductor.html)  **SplitConductor** Boundary-crossing conductor class.
* *class* : [/FE Circuits/Conductors/StrandedConductor](StrandedConductor.html) **StrandedConductor** methods:
* *class* : [Conductor](Conductor.html)  **Conductor** Base class for conductors.
* *class* : [SheetCircuit](SheetCircuit.html) **SheetCircuit** is a class.
* *class* : [SliceableCircuit](SliceableCircuit.html)  **SliceableCircuit** Base class for Circuits suitable for slicing.
* *class* : [/FE Circuits/Sources/ShortCircuit](ShortCircuit.html)  **ShortCircuit** Source for modelling three-phase short-circuits.
* *class* : [/FE Circuits/Sources/VoltageSource](VoltageSource.html)  **VoltageSource** Voltage source class for MagneticsProblem.
* *class* : [/FE Circuits/Sources/VoltageSourceBase](VoltageSourceBase.html) **VoltageSourceBase** methods:
* *class* : [CircuitSource](CircuitSource.html)  **CircuitSource** Base class for circuit sources.
* *class* : [/Modulators/PhaseCutModulator](PhaseCutModulator.html)  **PhaseCutModulator** Phase-cut voltage modulator.
* *class* : [/Modulators/SVPWM_Modulator](SVPWM_Modulator.html)  **SVPWM_Modulator** Basic Modulator.
* *class* : [/Modulators/SineTriangleModulator](SineTriangleModulator.html) **SineTriangleModulator** methods:
* *class* : [/Modulators/SinusoidalModulator](SinusoidalModulator.html)  **SinusoidalModulator** Sinusoidal voltage modulator.
* *class* : [/Modulators/SpaceVectorModulator](SpaceVectorModulator.html)  **SpaceVectorModulator** Prototype multiphase space vector modulator.
* *class* : [Modulator](Modulator.html)  Base class for modulators.
* *class* : [/Winding layouts/HairpinLayout](HairpinLayout.html) **HairpinLayout** methods:
* *class* : [/Winding layouts/HollowConductorLayout](HollowConductorLayout.html)  **HollowConductorLayout**  Layout for hollow conductors.
* *class* : [/Winding layouts/RectangularLayout](RectangularLayout.html)  **RectangularLayout** Layout for rectangular conductors.
* *class* : [/Winding layouts/RoundWireLayout](RoundWireLayout.html)  **RoundWireLayout** Winding layout class for random-wound coils.
* *class* : [/Winding layouts/UniformLayout](UniformLayout.html)  **UniformLayout** Layout specification for non-specified layouts:
* *class* : [/Winding layouts/WindingLayoutBase](WindingLayoutBase.html)  **WindingLayoutBase** Base class for winding layouts.
* *class* : [MultiSurfaceLayout](MultiSurfaceLayout.html)  **MultiSurfaceLayout** Base class for Layouts supporting multiple
## 
 Folder with the following files / classes / subfolders:

* *class* : [defs](defs.html) **defs** is a class.
* *class* : [emdconstants](emdconstants.html) **emdconstants** is a class.
## to_be_relocated
 Folder with the following files / classes / subfolders:

* *function* : [to_be_relocated/Geometry3D/assemble_current_source_vector_3D](assemble_current_source_vector_3D.html)  parsing
* *function* : [to_be_relocated/Geometry3D/element_centers](element_centers.html)  **element_centers** Mass centers of given elements.
* *function* : [to_be_relocated/Geometry3D/get_3DtetIntegrationPoints](get_3DtetIntegrationPoints.html)  **get_3DtetIntegrationPoints** Quadrature data for tetrahedron
* *function* : [to_be_relocated/Mechanical analysis/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [to_be_relocated/Windings/cageMatrix_1](cageMatrix_1.html)   Cr = **cageMatrix_1** Returns the loop matrix for a rotor cage with Qr
* *function* : [to_be_relocated/Windings/rotorConnectionMatrix](rotorConnectionMatrix.html)  **rotorConnectionMatrix** returns the loop matrices for the rotor cage.
* *function* : [to_be_relocated/contents](contents.html)  Folder with the following files / classes / subfolders:
* *function* : [to_be_relocated/ichol_automatic](ichol_automatic.html) **ichol_automatic** is a function.
* *function* : [to_be_relocated/order_edges](order_edges.html)  **order_edges** orders edges.
* *class* : [to_be_relocated/AFmodel2](AFmodel2.html) **AFmodel2** methods:
* *class* : [AirgapContainer](AirgapContainer.html)  **AirgapContainer** Container class for one or more airgap models.
* *class* : [GeoHelper](GeoHelper.html) **GeoHelper** methods:
* *class* : [GeoParser](GeoParser.html) **GeoParser** methods:
* *class* : [GeometryReplicator](GeometryReplicator.html) **GeometryReplicator** methods:
* *class* : [MotorModelBase](MotorModelBase.html)  **MotorModelBase** Base class for magnetics models.
* *class* : [RFmodel2](RFmodel2.html) **RFmodel2** methods:
* *class* : [dxfreader](dxfreader.html)  **dxfreader** Low-functionality dxf reader.
* *class* : [/Geometry3D/EdgeBoundaryMatrix](EdgeBoundaryMatrix.html) **EdgeBoundaryMatrix** methods:
* *class* : [/Geometry3D/LinearAVSolver](LinearAVSolver.html) **LinearAVSolver** methods:
* *class* : [/Geometry3D/NodalBoundaryMatrix](NodalBoundaryMatrix.html) **NodalBoundaryMatrix** methods:
* *class* : [/Geometry3D/OctTree](OctTree.html) **OctTree** methods:
* *class* : [/Geometry3D/PointData](PointData.html) **PointData** methods:
* *class* : [/Geometry3D/gw3D](gw3D.html) **gw3D** methods:
* *class* : [/Geometry3D/Geometry extrusion/AxialGeometryExtruder](AxialGeometryExtruder.html) **AxialGeometryExtruder** methods:
* *class* : [/Geometry3D/Geometry extrusion/GeometryExtruder](GeometryExtruder.html) **GeometryExtruder** methods:
* *class* : [/Geometry3D/Geometry extrusion/GlueDomain](GlueDomain.html) **GlueDomain** methods:
* *class* : [/Geometry3D/Geometry extrusion/RadialGeometryExtruder](RadialGeometryExtruder.html) **RadialGeometryExtruder** methods:
* *class* : [Nedelec3D](Nedelec3D.html)  **Nedelec3D** class for 3D Nedelec shape functions.
* *class* : [/Geometry3D/Objects_3D/eCurve](eCurve.html) **eCurve** methods:
* *class* : [/Geometry3D/Objects_3D/eObject](eObject.html) **eObject** methods:
* *class* : [/Geometry3D/Objects_3D/ePoint](ePoint.html) **ePoint** methods:
* *class* : [/Geometry3D/Objects_3D/eSurface](eSurface.html) **eSurface** methods:
* *class* : [/Geometry3D/Objects_3D/eVolume](eVolume.html) **eVolume** methods:
* *class* : [/Mechanical analysis/MechMesh](MechMesh.html) **MechMesh** methods:
* *class* : [/Mechanical analysis/MechUtil](MechUtil.html) **MechUtil** methods:
* *class* : [/Mechanical analysis/ShellEdge](ShellEdge.html)  **ShellEdge** Convenience class for handling shell edges.
* *class* : [Nodal2D_Quad](Nodal2D_Quad.html) **Nodal2D_Quad** is a class.
* *class* : [NodalBase](NodalBase.html) **NodalBase** is a class.
* *class* : [Quad](Quad.html) **Quad** is a class.
* *class* : [SimpleMesh2](SimpleMesh2.html) **SimpleMesh2** is a class.
* *class* : [/ThreeDAnalysis/Geometry3D](Geometry3D.html) Contents of **Geometry3D**:
* *class* : [/ThreeDAnalysis/MagneticsProblem3D](MagneticsProblem3D.html) **MagneticsProblem3D** methods:
* *class* : [/ThreeDAnalysis/MotorModel3D](MotorModel3D.html) **MotorModel3D** methods:
## utilities
 Miscellaneous utilities classes and functions.

* *class* : [Counter](Counter.html)  **Counter** **Counter** object for getting unique IDs etc.
* *class* : [GIFFile](GIFFile.html) **GIFFile** is a class.
* *class* : [HashMap](HashMap.html) **HashMap** is a class.
* *class* : [Indexable](Indexable.html) **Indexable** is a class.
* *class* : [ProxyObject](ProxyObject.html) **ProxyObject** is a class.
* *class* : [SLContainer](SLContainer.html)  **SLContainer** A SMEKlib container class for key-value pairs.
