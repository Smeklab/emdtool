---
title : calculate_winding_factor
parent: API
grand_parent : Documentation
---
# Summary for: **calculate_winding_factor**

**calculate_winding_factor** Winding factor calculation.

wf = **calculate_winding_factor**(ps, W) calculates the winding factors

Input arguments:
- ps: pole-pair numbers ps for which to calculate factor
- W : winding configuration matrix.

Returns:
- wf : 2 x numel(ps) array of winding factors. Factors for
forward-rotating waves on the first row; backward-rotating on the
second.

NOTE: The function returns 3-phase mmf-style factors, i.e. decaying
with 1./ps and sparser in spectrum than many textbook approaches.
Furthermore, the results are *unscaled*  so you may have to multiply them
with the working pole-pair number to get more familiar-looking results.

(c) 2019 Antti Lehikoinen / Smeklab Ltd

