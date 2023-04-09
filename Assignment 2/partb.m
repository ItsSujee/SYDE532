clc
clear

% Sujeethan Vigneswaran
% SYDE 532 Introduction to Complex Systems
% Question 6.12 Numerical / Computational Bifurcations

% Part B

% Linspace values for theta, z, and c
c = linspace(-2, 2, 100);
theta = linspace(-2,2,100);
z = linspace(-2,2,100);
[theta, z, c] = meshgrid([theta,z,c]);

% Evaluate the derivative
dzdt = c + theta.*z - z.^3;

% Plot the Fixed Points on a Isosurface Plot
title("Pitchfork Bifurcation Plot (ż = ζ + θ z - z^3)");
xlabel('θ');
ylabel('z');
zlabel('ζ', 'Rotation', 0);
grid on;
view(3)
daspect([1 1 1])
camlight 
lighting gouraud
colormap parula
isosurface(theta, z, c, dzdt, 0);