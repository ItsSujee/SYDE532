clc
clear
% Sujeethan Vigneswaran
% SYDE 532
% Problem 10.7

% Random Graph
rng('default');
nodes = 1000;
edges = 1000;

% (a) Generate a random graph of 1000 nodes
s = 1:nodes;
t = randi(nodes, edges, 1);
G = graph(s,t);
plot(G)
title("Random Graph")

% (b) Compute the degree for each node i
nodeID = G.Edges{:, 1}(:,1);
edgeID = G.Edges{:, 1}(:,2);
uniqueNodeID = unique(nodeID);
d = degree(G, uniqueNodeID);

% (c) For each node find its connected nodes and compute the average degrees
neighbour_degree = zeros(length(uniqueNodeID), 1);

% Get Average Degree of Neighbours
for i = 1:length(uniqueNodeID)
    neighbour_degree(i) = mean(degree(G, unique(edgeID(nodeID == uniqueNodeID(i)))));
end

q_i = mean(d)
a_i = mean(neighbour_degree)
percentage_neighbour_degree_greater = sum(neighbour_degree > d) / length(d) * 100