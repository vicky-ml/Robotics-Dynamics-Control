%% Parameters for Pendulum Robot Arm
clear
clc
close all

%% Paramaters Lists
m = 1/4;
l = 3/8;
I = m*l^2; % Load Inertia
g = 9.81;
c = 1.0791e-5; 


G = 1/30; %Gear ratio
% J_robot = m_robot*r^2*1.1; %Robot inertia
J_motor = 1.3e-4; %Motor inertia
km = 0.415; %Motor torque constant
ke = 50.68*60/(2*pi*1000); %Back emf constant
L = 4.8*1e-3; %Armature winding Inductance
R = 9.65; %Resistance
V =12; %Input voltage
%% J calculation  
% = J_motor + (I)*(1/G)^2 ;
J = J_motor + m*l^2 + I; 
%J = J_motor*G^2 + m*l^2 
disp(J);

%%
 %cnew = G*G*c
 %tetha = 90*(pi/180)
 %G = 1
 %Tload = (m/G)*g*l*sin(tetha/G);
 %disp(Tload);

