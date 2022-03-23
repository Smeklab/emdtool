%set_paths Set EMDtool and examples path
%
% (c) 2022 Smeklab Ltd / Antti Lehikoinen. All rights reserved.

addpath(genpath(emdtool_path));
addpath(genpath('Analysis scripts'));
addpath(genpath('Geometries'));

error('Stator-style Slot object for Rotor')
% add (inherits) to documentation
% todo SlotShape hierarchy
% todo doc everything accessable from templates page
% FW rotor properties
% fwspec
% cagecircuit