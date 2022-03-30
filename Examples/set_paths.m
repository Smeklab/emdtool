%set_paths Set EMDtool and examples path
%
% (c) 2022 Smeklab Ltd / Antti Lehikoinen. All rights reserved.

addpath(genpath(emdtool_path));
addpath(genpath('Analysis scripts'));
addpath(genpath('Geometries'));

% [x] Stator-style Slot object for Rotor
% [x] add (inherits) to documentation
% [x] todo SlotShape hierarchy
%   [] doc WoundSlot + functionality
% [] template pages for slots and layouts
%   [] winding_model_type docstring
% todo doc everything accessable from templates page
% FW rotor properties
% fwspec
% cagecircuit