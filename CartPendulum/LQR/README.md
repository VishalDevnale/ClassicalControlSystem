# Linear Quadratic Regulator: #

Here cart pendulum system is controlled using LQR gains.

**Assumptions and Limitations:**
1. Full-state feedback is available. i.e. measured x, x_dot, theta, theta_dot is available.
2. Measurement noise or plant disturbances are not considered.

## Simulink Model: ##

![Screenshot](SimulinkModel.png)

## Observations: ##

For following observations initial state and reference staes are as follows: (Refer to Initialize.m line 46 and 49) 	

`%initial state`

`x0 = [1; 0; 30*pi/180; 0];`

`%reference state to achieve`

`xr = [1; 0; 0; 0];`

Q | R | Settling time (theta=0) | Settling time (x=xr) | Max input (u) | Max(theta_dot):x4 | Max(x_dot):x2
------------ | -------------
Q(x1)=1, Q(x3)=1 | 1 | 5 sec | 7 sec | 10.66 N | -1.9 | 1.762
Q(x1)=1, Q(x3)=1 | 1 | 5 sec | 7 sec | 10.66 N | -1.9 | 1.762
