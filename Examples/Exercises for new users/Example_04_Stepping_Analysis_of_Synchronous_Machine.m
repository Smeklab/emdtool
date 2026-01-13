%% Example 4 - Stepping Analysis of a Synchronous Machine
% |*Goal:* Perform magnetostatic stepping over different rotor angles, for a 
% synchronous machine.|
% 
% |*Result:* Different waveform plots, flux density plots, and a structure of 
% important performance indicators.|
%% Prequisites
% Making sure that a model has already been initialized.

if ~exist('motor', 'var')
    Example_01_Setting_up_a_Model;
    close all;
end
%% |Background|
% This example analyses a synchronous (PM) machine at a single operating point 
% (constant rpm, sinusoidal phase currents), using what is called 'static analysis' 
% in |EMDtool|. Here, 'static' refers to the fact that that eddy currents and 
% similar damping effects are ignored, otherwise it works very much like what 
% one would expect from a constant-rpm transient simulation with imposed current 
% waveforms.
%% Initializations
% We again begin by instantiating a MagneticsProblem object

problem = MagneticsProblem.new(motor);
%% 
% and then specify the operating point to analyse

rpm = 3000; %rpm
Jrms = 10e6; %rms current density
pole_angle = pi/180 * 90; %Note: 90 degrees corresponds to id = 0
%% 
% Finally, to keep things fast, we only analyse one sixth of the electrical 
% period (enough for typical distributed-wound machines in ideal steady-state) 
% using a moderate 11 steps

angles = linspace(0, 2*pi/6, 11); %electrical angles to step through
%% Running the analysis
% Setting the excitation
% First, we compute the current waveforms corresponding to our desired rms current, 
% pole angle, and number of steps:

phase_circuit = stator.winding;
spec = stator.winding_spec;
Ipeak = sqrt(2)*Jrms * phase_circuit.conductor_area_per_turn_and_coil();
Is = spec.xy(Ipeak*[cos(pole_angle); sin(pole_angle)], angles);
%% 
% Next, we set the just-computed waveforms as the excitation for the stator 
% winding, exactly in the same fashion as we did in the torque curve example:

phase_circuit.set_source('uniform coil current', Is);
% Simulation parameters
% Next, we define the simulation parameters. For static stepping, the only crucial 
% parameters are typically the frequency and the (mechanical) rotor angles to 
% step through:

%parameters
pars = SimulationParameters('f', rpm/60*dim.p, 'rotorAngle', angles/dim.p, ...
    'silent', ~true);
% Solution
% Next, the problem is solved.

stepping_solution = problem.solve_static(pars);
%% Post-processing
% Plotting
% We proceed to plot the airgap flux density waveform,

figure(4); clf; hold on; box on;
motor.plot_airgap_flux_density(stepping_solution, 11)
%% 
% the flux density distribution at step 11,

%plotting example of flux
figure(5); clf; hold on; box on;
motor.plot_flux(stepping_solution, 11);
%% 
% the torque waveform

%plotting torque
T = motor.compute_torque( stepping_solution );
figure(6); clf; hold on; box on; title('Torque');
plot(angles/pi*180, T);
%% 
% and some voltage waveforms (note that the 'back-emf' method returns the simply 
% the time-derivative of the flux linkage, without differentiating whether it's 
% inductive or PM/field-winding related)

%voltages
voltage = phase_circuit.terminal_voltage(stepping_solution);
voltage_dq = phase_circuit.terminal_voltage( stepping_solution, 'output', 'space vector');
phase_voltage = phase_circuit.phase_bemf(stepping_solution);
phase_voltage_dq = phase_circuit.phase_voltage(stepping_solution, 'output', 'space vector');

%plotting
figure(7); clf; hold on; box on; grid on;
plot(stepping_solution.ts, voltage);
plot(stepping_solution.ts, colnorm(voltage_dq), 'linewidth', 2);
xlabel('Time (s)');
ylabel('Terminal voltage (V)');
% Results summary
% Finally and importantly, we compute the results summary with the <https://www.emdtool.com/api/MotorModelBase.html#results_summary-summary-of-analysis-results 
% |MotorModelBase.results_summary|> method. The method returns a Matlab structure; 
% in addition we are giving the |'verbose'| argument to also display the results 
% in the Matlab command window.

summary = motor.results_summary(stepping_solution, 'verbose', true);