
%example_CoatedRotor; %creating geometry
problem = MagneticsProblem(motor);
phase_circuit = stator.winding;

%visualizing the stator winding angle - assuming rotor d-axis angle is zero
Imax = 10e6 * phase_circuit.conductor_area_per_turn_and_coil();

Idq = [1; 0; 0] * Imax;
Is = SpaceVectors.xy(Idq, 0, stator.winding_spec.winding_angle);

%setting zero current density as source
phase_circuit.set_source('uniform coil current', Is); %EXPLAIN

%rotor angle to analyse
pars = SimulationParameters('rotorAngle', 0);
%pars = SimulationParameters('rotorAngle', pi/8);

%solving
static_solution = problem.solve_static(pars);

%plotting
figure(5); clf; hold on; box on;
motor.plot_flux(static_solution);
title('No-load flux density');

Bag_plot;