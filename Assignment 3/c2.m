clc
clear

% SYDE 532: Introduction to Complex Systems
% Assignment 3

% 7.22 c) ii) Selkov Model

% Theta
theta = linspace(0,1,100);

% Tau
tau = (2.*(theta.^2) / (0.1 + theta.^2)) - theta.^2 - 1.1;

% Delta
delta = (theta.^2) + 0.1;

% plot(delta, tau)
plot(delta, tau, "-b")
hold on
grid on
yline(0, "-k")
xline(0, "-k")
xlabel("Δ")
ylabel("τ")
title("τ-Δ Plot for (0<Θ<1)")

% Save
saveas(gcf, "SelkovPart2.png")