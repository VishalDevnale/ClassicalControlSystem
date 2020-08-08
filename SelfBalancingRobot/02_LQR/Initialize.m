clear all;
close;
clc;

M = 0.5;    %mass of cart
m = 0.2;    %mass of pendulum
fr = 0.1;   %friction coefficient
I = 0.006;  %inertia of rod along horizontal axis (i.e axis of rotation)
g = 9.8;    %gravity
l = 0.3;    %length of pendulum

lambda = m*l^2 + I;
beta = I*(M+m) + M*m*l^2;

A22 = -(fr*lambda) / beta;
A23 = -(m^2*l^2*g) / beta;
B21 = lambda / beta;

A42 = (fr*m*l) / beta;
A43 = ((M+m)*m*g*l) / beta;
B41 = -(m*l) / beta;

%Linearized state-space model
A = [0, 1,      0,      0; 
     0, A22,    A23,    0;
     0, 0,      0,      1;
     0, A42,    A43,    0];

B = [0; B21; 0; B41];

%all state feedback
C = eye(4);

%ctrb(A, B)
%rank(ctrb(A,B)) shall be equal to rabk of A i.e. in this case 4.
rank(ctrb(A,B))

Q = [1, 0,  0,  0;
     0, 1,  0,  0;
     0, 0,  1,  0;
     0, 0,  0,  1];

R = 1;

%initial state
x0 = [1; 0; 30*pi/180; 0];

%reference state to achieve
xr = [1; 0; 0; 0];

%LQR gain
K = lqr(A,B,Q,R);
%K(:)=0

%sampling time of system
Ts = 10*10^-3; 