function [outputArg1] = TWIPStateDerivative(inputArg1)
%CARTPENDSTATEDERIVATIVE Summary of this function goes here
%   Detailed explanation goes here

global g Mc Mw l r d lambda mu alpha beta
%% State read
x1 = inputArg1(1);      % distance
x2 = inputArg1(2);      % translational velocity

x3 = inputArg1(3);      % x3 = theta_c - theta_r
x4 = inputArg1(4);      % rate of change of theta_c

x5 = inputArg1(5);      % delta, Yaw angle
x6 = inputArg1(6);

u1 = inputArg1(7);      % Torque of left wheel
u2 = inputArg1(8);      % Torque of right wheel

phi = inputArg1(9);     % Slope angle

%% theta reference calculated according to slope angle phi
theta_r = asin( ((Mc+2*Mw)*r*sin(phi))/(Mc*l) );

%% derivative terms
x1_dot = x2;

x2_dot = ( (beta*lambda*r*(x4^2)*sin(x3+theta_r+phi)) - ((Mc+2*Mw)*g*lambda*(r^2)*sin(phi)) - ((beta^2)*g*sin(x3+theta_r)*cos(x3+theta_r+phi)) + (lambda*r + beta*r*cos(x3+theta_r+phi))*(u1+u2) ) / (mu*lambda - (beta^2)*(cos(x3+theta_r+phi))^2) ;

x3_dot = x4;

x4_dot = ( (mu*Mc*g*l*sin(x3+theta_r)) + (beta*r*g*(Mc+2*Mw)*sin(phi)*cos(x3+theta_r+phi)) - ((beta^2)*(x4^2)*sin(x3+theta_r+phi)*cos(x3+theta_r+phi)) - (mu+beta*cos(x3+theta_r+phi))*(u1+u2)  ) / (mu*lambda - (beta^2)*(cos(x3+theta_r+phi))^2) ;

x5_dot = x6;

x6_dot = (d*r/alpha)*(u1-u2);

%% Output
outputArg1 = [x1_dot, x2_dot, x3_dot, x4_dot, x5_dot, x6_dot]';

end

