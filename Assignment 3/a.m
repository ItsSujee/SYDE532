clc
clear

% SYDE 532: Introduction to Complex Systems
% Assignment 3

% 7.22 a) Competing Dynamics Model

% Set Seed
rng(4)

% Population
n = 100;

% delta t
dt = 0.1;

% Generate x samples: 0 < x < 3
x = 3 - 3*rand(1,n);

% Generate y samples: 0 < y < 2
y = 2 - 2*rand(1,n);

% Create placeholders for all iterations
x_plot = zeros(n,n);
y_plot = zeros(n,n); 

% Iterate 
for i = 1:n
    % Insert the values for the current iteration
    x_plot(i,:) = x;
    y_plot(i,:) = y;
    
    % Calculate the change in x & y 
    x_dot = (3-x-2.*y).*x;
    y_dot = (2-y-x).*y;
    
    % Calculate the new x & y values     
    x_new = x + dt .* x_dot;
    y_new = y + dt .* y_dot;
    
    % Set the new x & y points    
    x = x_new;
    y = y_new;
end

% Plot Phase Diagram x & y
plot(x_plot, y_plot, "-b")
hold on
plot(x_plot(1,:), y_plot(1,:), ".b")
xlabel("x")
ylabel("y")
title("Competing Dynamics Model Phase Diagram")
axis([-0.25,3.25,-0.25,2.25])

% Plot Fixed Points
plot(0,0,"or","MarkerFaceColor","r")
plot(1,1,"or")
plot(3,0,"or")
plot(0,2,"or")
grid on

% Save Plot
saveas(gcf, "CompetingDynamicsModel.png")