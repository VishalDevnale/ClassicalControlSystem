clear all;
close;
clc;

M = 0.5;    %mass of cart
m = 0.2;    %mass of pendulum
fr = 0.1;   %friction coefficient
I = 0.006;  %inertia of rod along horizontal axis (i.e axis of rotation)
g = 9.8;    %gravity
l = 0.3;    %length of pendulum

%initial state
x0 = [0; 0; 10*pi/180; 0];

%samoling time
Ts = 10*10^-3; 