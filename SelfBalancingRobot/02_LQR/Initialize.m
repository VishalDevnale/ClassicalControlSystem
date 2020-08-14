clear all;
close;
clc;

%% Robot physical parmaeter

global g Mc Mw l r d lambda mu alpha beta

g = 9.8;    % gravitational constant 
Mc = 4;     % Mass of cart/body of robot (kg)
Mw = 15;    % Mass of each wheel (kg)
l = 0.4;    % Height/length of robot from center of axle (m)
r = 0.05;   % Radius of wheels (m)
d = 0.4;    % Distance between two wheels (m)

Iw = 0.02;  % Inertia of wheel
Ic = 1.68;  % Inertia of robot body along the wheel axle (z)
Iy = 0.5;   % Inertia of robot body along the vertical axis (y)

%% constants

lambda = Mc*(l^2) + Ic;
mu = 2*Mw*(r^2) + Mc*r^2 + 2*Iw;
alpha = Mw*(d^2)*(r^2) + Iw*(d^2) + 2*Iy*(r^2);
beta = Mc*l*(r^2);

phi = 0; % Slope angle
theta_r = asin( ((Mc+2*Mw)*r*sin(phi))/(Mc*l) );

%% Lineaized/Jacobian matrix

denom = (mu*lambda - (beta^2)*(cos(theta_r+phi))^2);

A23 = -((beta^2)*g*cos(theta_r)*cos(theta_r+phi)) / denom;
B21 = (lambda*r + beta*r*cos(theta_r+phi)) / denom;
B22 = B21;

A43 = (mu*Mc*g*l*cos(theta_r)) / denom;
B41 = -(mu + beta*cos(theta_r+phi)) / denom;
B42 = B41;

B61 = (d*r)/lambda;
B62 = -B61;

%Linearized state-space model
A = [0,     1,      0,      0,      0,      0; 
     0,     0,    A23,      0,      0,      0;
     0,     0,      0,      1,      0,      0;
     0,     0,    A43,      0,      0,      0;
     0,     0,      0,      0,      0,      1;
     0,     0,      0,      0,      0,      0;];

B = [   0,     0; 
      B21,   B22; 
        0,     0; 
      B41,   B42;
        0,     0;
      B61,   B62;];

%all state feedback
C = eye(6);

%ctrb(A, B)
%rank(ctrb(A,B)) shall be equal to rabk of A i.e. in this case 4.
rank(ctrb(A,B));

%% LQR gain calculation

Q = [1, 0,  0,  0,  0,  0;
     0, 1,  0,  0,  0,  0;
     0, 0,  1,  0,  0,  0;
     0, 0,  0,  1,  0,  0;
     0, 0,  0,  0,  1,  0;
     0, 0,  0,  0,  0,  1];

R = [1, 0;
     0, 1];

%initial state
initial_theta_c = 10*pi/180;
x0 = [0;    0;  initial_theta_c;  0;   0;  0];

%reference state to achieve
xr = [1; 0; 0; 0; 0; 0];

%LQR gain
K = lqr(A,B,Q,R)
%K(:)=0

%sampling time of system
Ts = 10*10^-3; 