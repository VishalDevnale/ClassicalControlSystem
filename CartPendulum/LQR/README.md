# Linear Quadratic Regulator: #

Here cart pendulum system is controlled using LQR gains.

**Assumptions and Limitations:**
1. Full-state feedback is available. i.e. measured x, x_dot, theta, theta_dot is available.
2. Measurement noise or plant disturbances are not considered.

## Observations: ##

For following observations initial state and reference staes are as follows: (Refer to Initialize.m line 46 and 49) 	

`%initial state`

`x0 = [1; 0; 30*pi/180; 0];`

`%reference state to achieve`

`xr = [1; 0; 0; 0];`

**Experiment 1:**

![Image of Simulink Model](https://github.com/VishalDevnale/ControlSystem/tree/master/CartPendulum/LQR/SimulinkModel.png)
