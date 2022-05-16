%simulate_short_circuit Simulate three-phase short-circuit at the
%terminals.

%operating point data
rpm = 5000;
Jrms = 8e6;

%for improved simulation speed
for c = rotor.circuits
    c.enabled = false;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% actual simulation part

%interesting circuits
phase_circuit = stator.winding;
spec = stator.winding_spec;

%initializing problem
problem = MagneticsProblem(motor);

%setting parameters
pars = SimulationParameters('f', rpm/60*dim.p, 'isDC', true, 'N_periods', 2, ...
    'N_stepsPerPeriod', 100, 'silent', true, 'slip', 0);


%current supply, before short
Ipeak = sqrt(2)*Jrms * phase_circuit.conductor_area_per_turn_and_coil();
idq = [0; Ipeak];
Is = spec.xy(idq, 2*pi*pars.f*pars.ts);

%setting a ShortCircuit source
T_period = 1/pars.f;

source = ShortCircuit;
source.short_at = T_period * 0.2; %instant of the short

%supply-type before the short
source.supply_before_short = "terminal current";
source.supply = Is;
phase_circuit.set_source('circuit', source);


%solving harmonic
harmonic_solution = problem.solve_quasistatic(pars);

%solving stepping
stepping_solution = problem.solve_stepping(pars);


%currents
I = phase_circuit.terminal_current(stepping_solution);

%plotting torque
T = motor.compute_torque(stepping_solution);
figure(6); clf; hold on; box on; grid on;
plot(pars.ts, T);

figure(7); clf; hold on; box on; grid on;
h = plot(stepping_solution.ts*1e3, I, 'linewidth', 2);
xlabel('Time (ms)');
ylabel('Current (A)');
title('Phase current');

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% animation part here

%eqcircuit = SynEquivalentCircuit.from_model(motor, 'mode', 'frozen permeability', ...
%    'average_results', true);
idq_ss = eqcircuit.current_from_voltage(rpm, 0, 0);

Idq = phase_circuit.terminal_current(stepping_solution, 'output', 'space vector');
ts = stepping_solution.ts;

fcurrent = GIFFile('current.gif');
for k = 1:numel(ts)
    fig = figure(8); clf; hold on; box on; axis equal;

    motor.plot_flux(stepping_solution, k, 'plot_airgap', true);
    if ts(k) < source.short_at
        title('Normal', 'Fontsize', 16);
    else
        title('Shorted', 'Fontsize', 16);
    end
    

    axis([dim.Sout*[-1 1] -dim.Rout dim.Sout])

    axes1 = gca; %get a handle to this axis
    set(axes1,'OuterPosition',[0 0 0.5 1]);
    % Create 2nd axes and set the position below the first axis
    axes2 = axes('Parent',fig,'OuterPosition',[0.5 0 0.5 1]);
    hold on; box on; grid on;

    %plot(Idq(1,1), Idq(2,1), 'ko', 'linewidth', 2);
    hss = plot(idq_ss(1,1), idq_ss(2,1), 'ko', 'linewidth', 2);
    plot(Idq(1,1:k), Idq(2,1:k), 'k');
    hnow = plot(Idq(1,k), Idq(2,k), 'kx', 'linewidth', 2);


    axis([min(Idq(1,:)), max(Idq(1,:)), min(Idq(2,:)), max(Idq(2,:)) ])
    xlabel('id', 'Fontsize', 16);
    ylabel('iq', 'Fontsize', 16);
    %axis equal;
    daspect([1 1 1])
    
    legend([hnow, hss], 'Instantaneous', 'Steady-state', 'fontsize', 16);
    drawnow;

    fcurrent.write();
end