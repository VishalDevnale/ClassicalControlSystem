function [outputArg1] = CartPendStateDerivative(inputArg1)
%CARTPENDSTATEDERIVATIVE Summary of this function goes here
%   Detailed explanation goes here
x = inputArg1(1);
x_dot = inputArg1(2);
theta = inputArg1(3);
theta_dot = inputArg1(4);
u = inputArg1(5);

M = 0.5;
m = 0.2;
fr = 0.1;
I = 0.006;
g = 9.8;
l = 0.3;

lambda = m*l^2 + I;

x_dot_dot = (-fr*lambda*x_dot + m*l*theta_dot^2*lambda*sin(theta) - m^2*l^2*g*cos(theta)*sin(theta)+ u*lambda) / (lambda*(M+m) - m^2*l^2*cos(theta)^2);
theta_dot_dot = (fr*m*l*cos(theta)*x_dot - m^2*l^2*theta_dot^2*cos(theta)*sin(theta) + (M+m)*m*g*l*sin(theta) - m*l*cos(theta)*u) / (lambda*(M+m) - m^2*l^2*cos(theta)^2);

outputArg1 = [x_dot, x_dot_dot, theta_dot, theta_dot_dot]';
end

