---
title : get_defaultMaterials
parent: API
grand_parent : Documentation
---
# Summary for: **get_defaultMaterials**

**get_defaultMaterials** Returns the BH curve for old built-in materials

BH = **get_defaultMaterials**(matNumber)

returns the BH curve of the built-in material *matnumber* , in the format BH = [B H];

**get_defaultMaterials**(-1)

returns the number of available materials

[BH, coeffs] = also return loss coefficients c_hyst, c_eddy, c_ex, each
representing the loss density (W/k) at 1 T and 50 Hz.

Materials:

*   0 = air
*  1 = Construction steel (Ovako 520 L)
*  2 = Steel sheet for rotor pole shoes
*  3 = Steel sheet for stator laminations
*  4 = Electrical steel sheet – Bochum STABOLEC 260-50 A
*  5 = Electrical steel sheet – Bochum STABOLEC 200-50 A
*  6 = Electrical steel sheet – Bochum STABOLEC 170-50 A
*  7 = Electrical steel sheet – Bochum STABOLEC 100-35 A
*  8 = Höganäs Somaloy 550
*  9 = Magnetic slot wedge material
*  10 = linear iron
*  11 = High-frequency steel sheet – Bochum V 270-35 A
*  12 = High-frequency steel sheet – Bochum HF 20
*  13 = High-frequency steel sheet – Magnesil-N (0.007")
*  14, 21 = linear PM material (mur = 1.05)
*  15 = Vacodur 50
*  16 = NO20
*  17 = NO12
*  18 = Copper, linear air
*  19 = M330-35A
*  20 = carbon fiber
*  22 = Inconel, linear air
*  23 = Aluminum, linear air
*  24 = Ti6Al4V (Grade 5)
*  25 = Stainless steel, linear
*  26 = generic impregnation resin, magnetically linear
*  27 = generic epoxy glue, magnetically linear.

(c) 2017 Antti Lehikoinen / Aalto University

(c) 2019 Antti Lehikoinen / Smeklab

