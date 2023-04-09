clc
clear

% SYDE 532: Introduction to Complex Systems
% Assignment 3

% 7.22 b) Classic Predator Prey Model

% Set Seed
rng(3)

% Population
n = 100;

% delta t
dt = 0.1;

% set theta
theta = 2;

% Generate x samples: 0 < x < 1
x = rand(1,n);

% Generate y samples: 0 < y < 1
y = rand(1,n);

% Create placeholders for all iterations
x_plot = zeros(n,n);
y_plot = zeros(n,n); 

% Iterate 
for i = 1:n
    % Insert the values for the current iteration
    x_plot(i,:) = x;
    y_plot(i,:) = y;
    
    % Calculate the change in x & y 
    x_dot = (1-y).*x;
    y_dot = theta*(x-1).*y;
    
    % Calculate the new x & y values     
    x_new = x + dt.*x_dot;
    y_new = y + dt.*y_dot;
    
    % Set the new x & y points    
    x = x_new;
    y = y_new;
end

% Plot Phase Diagram x & y
plot(x_plot, y_plot, "-b")
hold on
xlabel("x")
ylabel("y")
title("Classic Predator-Prey Model")
axis([-0.25,3.25,-0.25,3.25])
grid on
hold on

% Plot Fixed Points
plot(0,0,"or","MarkerFaceColor","r")
plot(1,1,"or","MarkerFaceColor","r")

% Save Plot
saveas(gcf, "ClassicPredatorPreyModel.png")