---
title : zeropadcat
parent: API
grand_parent : Documentation
---
# Summary for: **zeropadcat**

**zeropadcat** Horizontal concatenation of arrays with zero-padding.

y = **zeropadcat**(x1, x2, x3, ...) is equivalent to calling
y = [x1hat, x2phat, x3hat] with each

xihat= [xi; zeros(n_extra, size(xi, 2))] with n_extra calculated to
match all hat-arrays to the same size.

