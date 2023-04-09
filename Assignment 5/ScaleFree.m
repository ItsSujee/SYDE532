clc
clear
% Problem 10.7

% Scale-Free Graph
rng('default');
nodes = 1000;
edges = 1000;

% Create a Power-Law Distribution Random Number Generator
t = int64(gprnd(0, 1, 1000, [1, 1000]));

% (a) Generate a scale-free graph of 1000 nodes
s = 1:nodes;
G = graph(s,t);
plot(G)
title("Scale-Free Graph")

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