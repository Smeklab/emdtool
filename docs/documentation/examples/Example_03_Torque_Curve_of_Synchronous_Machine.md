---
layout: default
title: Example 03 Torque Curve of Synchronous Machine
parent: Examples
grand_parent : Documentation
---

# Example 3 \- Computing the Torque Curve

**`Goal:`** `Estimate the torque curve as a function of the pole angle.` 


**`Result:`** `Plots of the torque curve, and of the flux density at the maximum torque reached.` 

# Prequisites

Making sure that a model has already been initialized.

```matlab
if ~exist('motor', 'var')
    Example_01_Setting_up_a_Model;
    close all;
end
```

```matlabTextOutput
gmsh path E:\Software\Work\gmsh-4.11.1\ loaded from preference group 'emdtool' 
  Name       Size            Bytes  Class      Attributes

  motor      1x1                 8  RFmodel              
```
# `Background`

This example shows how to compute the torque curve of a synchronous machine, with a given current density. The curve is computed versus the *pole angle*, i.e. 90 degrees corresponding to id=0.


The curve is computed using magnetostatic analysis and with a single rotor position only, meaning it ignores the effects of eddy currents, and more importantly the effect of torque ripple. Nevertheless, it is an extremely fast way of getting an initial impression of the performance of the modelled machine.

## A note on conventions

Importantly, this example computes the torque curve using a single rotor position only, rotating the 3\-phase (or m\-phase in general) current vector. By contrast, other software may opt for the opposite approach \- rotating the rotor against a constant current vector. 

# Initializations

We first begin by initializing a new [MagneticsProblem](https://www.emdtool.com/api/MagneticsProblem.html) object. Since we are being careful, we can use the `.new` static method, which caches the created object and speeds up subsequent calls to the same method with the same input.

```matlab
problem = MagneticsProblem.new(motor);
```

Next, we defin the range of pole angles to analyse, and the rms current density to use,

```matlab

angles = linspace(0, pi, 21); %pole angles to analyse
Jrms = 10e6; %current density Arms
```

Note: when analyzing electrically\-excited machines, the following lines can be uncommented to set the rotor excitation.

```matlab

%uncomment for electrically-excited machines
%{
Jfield = 3e6;
field_circuit = rotor.winding;
Ifield = Jfield * field_circuit.conductor_area_per_turn_and_coil();
field_circuit.set_source('uniform coil current', Ifield*ones(1, numel(angles)));
%}
```

Next, we are computing the phase currents corresponding to the rotating current vector

```matlab
spec = stator.winding_spec;
Ipeak = sqrt(2)*Jrms * phase_circuit.conductor_area_per_turn_and_coil();
```

```matlabTextOutput
Unable to resolve the name 'phase_circuit.conductor_area_per_turn_and_coil'.
```

```matlab
Is = spec.xy(Ipeak*[cos(angles); sin(angles)], 0);
```

and setting the currents as our excitation for the stator winding. We do this with the [`.set_source method of the PolyphaseCircuit class`](https://www.emdtool.com/api/PolyphaseCircuit.html#set_source-set-circuit-source), in this case specifying the  `'uniform coil current'` option. As the title suggests, this enforces the coil current, or the current in each parallel path, assuming ideal uniform current distribution with no eddy effects modelled.

```matlab
%setting source
phase_circuit = stator.winding;
phase_circuit.set_source('uniform coil current', Is);
```

Since we are dealing with magnetostatic analysis, we can only specify a uniform coil current as the excitation. Please note that the coil current and the phase current generally differ by the ratio of the parallel paths in the winding `spec.a`.

# Solving the problem

Next, we solve the problem using the same syntax as before.

```matlab
%setting parameters
pars = SimulationParameters('rotorAngle', 0*angles/dim.p);

%solving problem
static_solution = problem.solve_static(pars);
```
# Plotting the results

Finally, the remaining steps are to visualize the torque curve and the flux density.


First, we compute the torque

```matlab
T = motor.compute_torque( static_solution );
```

Then, in order to make the analysis syntax here consistent for models with multiple airgaps, we compute the total torque with

```matlab
T_total = sum(T,1);
```

In our example case, this does absolute nothing. However, multigap models generally return an array of torques, with the number of rows equal to the number of airgaps. Computing the column\-wise sum then commonly yields the net torque, although complex models with multiple rotating components may require special care.

## Actual plots

With this out of the way, we can proceed into the actual plotting.


First, the torque curve

```matlab
%plotting torque
figure(5); clf; hold on; box on;
plot(angles/pi*180, T);
xlabel('Load angle (deg)');
ylabel('Torque (Nm)');
```

and then the flux density distribution at the maximum torque reached.

```matlab
%plotting flux at maximum torque
figure(6); clf; hold on; box on;
[~, ind] = max(T);
motor.plot_flux(static_solution, ind);
title('Flux density at maximum torque');
```


[**NEXT UP**: Example 04 Stepping Analysis of Synchronous Machine](Example_04_Stepping_Analysis_of_Synchronous_Machine.html)