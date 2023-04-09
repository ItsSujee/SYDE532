clc
clear

% Sujeethan Vigneswaran
% SYDE 532 Introduction to Complex Systems
% Question 6.12 Numerical / Computational Bifurcations

% Part A

% Set C to 0
C = 0;

% Linspace values for theta and z
theta = linspace(-2,2,1000);
z = linspace(-2,2,1000);
[theta, z] = meshgrid([theta,z]);

% Evaluate the derivative
dzdt = C + theta.*z - z.^3;

% Plot the Fixed Points on a Contour Plot
contour(theta,z,dzdt,[0 0], "-r", "LineWidth", 2)
ax = gca;
ax.YAxisLocation = 'origin';
ax.XAxisLocation = 'origin';
grid on
xlabel("θ")
ylabel("z")
title("Pitchfork Bifurcation Plot (ż = θ z - z^3)")
