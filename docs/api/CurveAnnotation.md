---
title : CurveAnnotation
parent: API
grand_parent : Documentation
---
# Summary for: **CurveAnnotation**  < [AnnotationBase](AnnotationBase.html)

## Class summary

CurveAnnotation Class for curve annotations.

A class for annotating [Curves](Curves.html).

this = CurveAnnotation(txt, curve) created an annotation associated
with the given `curve`, with the the given text `txt`.

this = CurveAnnotation(txt, P1, P2) creates a new [Line](Line.html) between the
[Points](Points.html) `P1` and `P2`.

this = CurveAnnotation(txt, P1, Pcenter, P2) creates a new [Arc](Arc.html)
instead.

By default, the text is shown anchored to the midpoint between the
Curve start- and end-points. Setting the `this.loc` property to
another `Point` uses that point instead.

## Properties

### .**HorizontalAlignment** Horizontal alignment of the text.

Passed to Matlab's `text` function.

### .**VerticalAlignment** Vertical alignment of the text.

Passed to Matlab's `text` function.

### .**loc** Textbox anchor point.

Empty by default, in which case the curve pseudo-center (in case
of Arcs) is used.

### .**parent_curve** Parent curve

The parent curve to annotate.


## Methods

Class methods are listed below. Inherited methods are not included.

### .**get_text_location** Get text box location.

### .**parse_inputs** Parse given inputs.


