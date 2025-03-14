---
layout: default
title: EMDtool
nav_order: 1
---

# EMDtool briefly

EMDtool is an Electric Motor Design toolbox for Matlab. It features full-functionality 2D Finite Element Analysis with nonlinearity, circuit connections, and motion, with under-development 3D capacity as well.

EMDtool is generally regarded as _fast_ compared to e.g. [FEMM](https://www.femm.info/wiki/HomePage) or Maxwell.

Finally, the [industrial licenses](pricing.html) of EMDtool are largely [source-available](https://en.wikipedia.org/wiki/Source-available_software), making it easy for you to extend and modify it to your organization's needs. This 
makes EMDtool the **ideal choice for medium-sized enterprises** that would greatly benefit from a custom-inhouse software toolkit, but don't have the resources to dedicate an entire team (or department) to building and 
maintaining one.

Please send an email to antti (at) smeklab.com to enquire about a [license](pricing.html). **Please check your spam folder** - each and every message will be replied.

To see the latest updates, please check

* [Release_notes](release_notes.html) for a brief list of all updates.

* [The EMDtool forum](https://forum.emdtool.com/viewforum.php?f=12) for longer examples of select updates.

# Why EMDtool?

## EMDtool is perfectly accurate

In terms of accuracy, EMDtool is on par with any correctly-implemented commercial or open-source software. Granted, JMAG might have better iron
loss models (for now ;)), and Motor-CAD might be hard to beat for drive-cycle thermal analysis. Yet, EMDtool punches well above its weight class.

For a longer discussion, [please see this page](documentation/emdtool_accurate.html).

## Affordable

While price alone isn't a good aspect to base one's decision on, EMDtool _is_ priced on a level that is typically easy to fit in a small team's
budget without a large approval hassle.

## Flexible licensing

EMDtool is licensed based on the number of long-term _active_ users. In other words, lending a license to an intern or a thesis worker for a few months
is perfectly okay, and even encouraged.

## Customizable

Wholly unique in the world of commercial software, EMDtool is mostly source-available (and trusted clients can get access to even the protected parts,
on request). This offers some rather unique possibilities for extensions, modifications, and debugging (no software is perfect).

## Parallelizable

No extra licenses are needed to utilize multi-core CPUs.

## Magnet and winding losses

For some reason, the software-giant world still doesn't seem to have figured out EMDtool's hybrid 2D-3D magnet loss model. 
[This model](api/ExtrudedBlockCircuit.html) makes it possible to account for axial magnet segmentation, with great accuracy 
(seriously, the worst case observed so far was about 15 % larger losses compared to full 3D, with the usual numbers being within a few percent) and
a small fraction of the computational time (think 1-3x regular 2D analysis).

Also, EMDtool allows for modelling the circulated currents in stranded windings without having to explicitly mesh each wire, ofter providing speed-ups
up to 100x.

## Support

To paraphase another well-known product, EMDtool is also made by motor design person, for motor-design persons.


# How does EMDtool work?

Please check the [getting started guide](documentation/getting_started.html) and the [`EMDtool` overview](documentation/emdtool_briefly.html) to get a quick first impression.


# History

EMDtool is loosely based on the open-source [SMEKlib library](https://github.com/AnttiLehikoinen/SMEKlib) developed at Aalto University, Finland, between 2013 and 2018 or so. This library was initially built out of
necessity - the Research Group of Electromechanics was (and still is) working on advanced loss model development, and commercial softwares were definitely not flexible enough for that purpose.

# Requirements

The main system requirements are listed below:

* A relatively recent version of Matlab
    * No additional Matlab toolboxes required
	
# Features

EMDtool is continuously developed. At the time of writing, the situation is as follows:

Existing features:

* Time-static and transient analysis in 2D, with motion.
* Class-based geometry definition
* Flexible definition of circuits, including
    * Polyphase circuits with current density, net current, or voltage supply
    * Large solid conductors like rotor bars or solid shafts
    * Axially-segmented solid conductors like permanent magnets 
* Simple post-processing of quantities of interest, including
    * Torque, current, and voltage waveforms
    * Visualization of flux and eddy-current densities
    * Losses 
* Synchronous machine analysis with current supply (sinusoidal & PWM):
    * Efficiency maps
    * Equivalent circuits
    * Automatic operation point iteration (current d- and q-axis components for reaching desired speed, torque point) 
	* Electrically-excited synchronous machines ([see example](https://www.anttilehikoinen.fi/general/mahle-magnet-free-motor-first-impressions/)) _under development_

Features under development; working but not pretty:
* 3D analysis, static and transient
    * Linear and nonlinear
	* Rotation/motion almost working

# Frequently-asked questions

For questions on the toolbox itself, please first refer to the [documentation](documentation/documentation.html). Other common questions are listed below.

### Is there support?

Yes. Time for honesty here - only a small number of `EMDtool` licenses have been sold so far. That means quite personalized support.

### Can **Feature X** be added?

Most likely yes. If it's something small, that's [on the house](https://www.smeklab.com).

Something bigger would then call for a joint development project. Normally, that would work as a consulting-style arrangement, at break-even price, with the new functionality added to the future `EMDtool`
releases (apart from possible minor confidential parts such as custom geometry templates).

### Does EMDtool work with Octave/Scilab?

No, unfortunately. Octave does claim compatibility with Matlab, but this claim does not seem to be correct. For instance, object arrays are not supported.

### Is there a Python version?

That'd again be a no. A Python implementation would be lovely, but porting the existing codebase would be quite a formidable task. 

Futhermore, Matlab's JIT (just-in-time) compiler is pretty much the best on market, resulting in very fast execution. Python does have `Numba`, which unfortunately only works on rather elementary operations.
By contrast, a huge majority of the lines-of-code in `EMDtool` cannot be easily translated to low-lever format.
