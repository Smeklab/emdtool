%example_SlottedRotor1 Example of the SlottedRotor1 template.

%getting stator dimensions
example_Stator_4P;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% rotor dimensions

dim.Qr = 18; %number of rotor slots

dim.symmetry_sectors = gcd(2*dim.p, dim.Qr);

% rotor specs
dim.Rout = dim.Sin - dim.delta;
dim.Rin = 10.00e-3;

% rotor slot specs, slot shape 1
%{
dim.shape_r = 1;

%virtual slot-opening
dim.wso_r = 0.8e-3;
dim.htt_r = 0.8e-3;

%slot dimensions
dim.hslot_r = 10e-3;
dim.wtooth_r = 2*pi*(dim.Rout - dim.hslot_r)/dim.Qr * 0.8;
%}

% rotor slot specs, slot shape 2
%%{
dim.shape_r = 2;

%virtual slot-opening
dim.wso_r = 0.8e-3;
dim.htt_r = 0.8e-3;

%slot dimensions
dim.hslot_r = 10e-3;
dim.wtooth_r = 2*pi*(dim.Rout - dim.hslot_r)/dim.Qr * 0.8;
%}


dim.rotor_core_material = SteelLibrary.create('M400-50A');
dim.rotor_stacking_factor = 0.95;
dim.rotor_bar_material = 23; %aluminum
dim.rotor_slot_opening_material = dim.rotor_core_material; %closed slot
%dim.rotor_slot_opening_material = dim.rotor_bar_material; %open slot
dim.shaft_material = 1;

%cage properties
dim.H_ring = dim.hslot_r;
dim.D_ring = dim.Rout - dim.H_ring/2;
dim.W_ring = dim.H_ring; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creating geometry

stator = Stator(dim);
rotor = SlottedRotor1(dim);

figure(1); clf; hold on; box on; grid on; axis equal;
stator.plot_geometry();
rotor.plot_geometry();

motor = RFmodel(dim, stator, rotor);
return
figure(3); clf; hold on; box on; axis equal tight;
motor.visualize();

figure(3); clf; 
subplot(2, 1, 1); hold on; box on; axis equal tight;
motor1.visualize();
subplot(2, 1, 2); hold on; box on; axis equal tight;
motor2.visualize();

%saving visualization
%emdtool_export_example_fig(rotor);