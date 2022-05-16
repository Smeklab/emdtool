%set_paths Set EMDtool and examples path
%
% (c) 2022 Smeklab Ltd / Antti Lehikoinen. All rights reserved.

addpath(genpath(emdtool_path));
addpath(genpath('Analysis scripts'));
addpath(genpath('Geometries'));

% [] document Grid output
% [x] Stator-style Slot object for Rotor
% [x] add (inherits) to documentation
% [x] todo SlotShape hierarchy
%   [x] doc WoundSlot + functionality
% [x] template pages for slots and layouts
%   [x] winding_model_type docstring
% [] Roundwirelayout packing function
% todo doc everything accessable from templates page
% FW rotor properties
% fwspec
% cagecircuit