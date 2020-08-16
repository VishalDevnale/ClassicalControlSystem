%% Motot Parameter Initialization
clear all
close all
clc

%% Define Constants
% Armature Values
%Va = 250;       % Armature (rotor) Voltage (Volts)
Laf = 1.6;      % Magnetizing Inductnace (H), mutual inductance M 
Laa = 75e-3;    % Aramaturer Self Inductance (H)
Ra = 3;         % Armature Resistance (ohm)

% Field Values
%Vf = 250;       % Field (stator) Voltage (Volts)
Lff = 50;       % Feild Self indcutance (H)
Rf = 500;       % Feild Resistance (ohm)

% Machine Constants
Bm = 0;         % Motor damping coefficient (because of friction) unit: N*m/(rad/s)
J = 0.2;       % Inertia of rotor