%% Example 2 - No-load flux density
%% Prequisites
% Making sure that a model has already been initialized.

if ~exist('motor', 'var')
    Example_01_Setting_up_a_Model;
    close all;
end

%% Setting up a problem

problem = MagneticsProblem.new(motor);

%% Setting inputs and parameters

%setting zero current density as source
phase_circuit = stator.winding;
phase_circuit.set_source('uniform coil current', zeros(stator.winding_spec.phases, 1)); %EXPLAIN

%rotor angle to analyse
pars = SimulationParameters('rotorAngle', 0);
%pars = SimulationParameters('rotorAngle', pi/8);
%% Solving

%solving
static_solution = problem.solve_static(pars);
%% Post-processing and visualizing

%plotting flux density distribution
figure(5); clf; hold on; box on;
motor.plot_flux(static_solution);
title('No-load flux density');

%plot airgap flux density waveform
figure(6); clf; hold on; box on; grid on;
motor.plot_airgap_flux_density(static_solution);

%plot airgap flux density spectrum
figure(7); clf; hold on; box on; grid on;
motor.plot_airgap_flux_density(static_solution, 1, 'plot_spectrum', true);