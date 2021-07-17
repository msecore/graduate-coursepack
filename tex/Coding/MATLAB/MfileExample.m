%% MeshPlot.m
% A simple script with an anonymous function to plot a radial sinc function.
% Author: JD Emery
% Modified: Feb 18th 2017

%% Variable Declaration/Preallocation
a = 2;
b = 3;

%% Anonymous Functions
sinc2 = @(x,y) x*sin(y)./y;   %Define anonymous function sinc2 with inputs (x,y)

%% Script
[X,Y] = meshgrid(-20:.25:20); %Define the mesh calculation range.
R = sqrt(a*X.^2 + b*Y.^2);    %Define value R in terms of X,Y meshpoints.

%% Plot
f = figure; %Create figure and define handle.
set(f,'name','Sinc Function 2D','numbertitle','off') %Name figure

mesh(X,Y,sinc2(a,R),'LineWidth',0.3) %Plot [X,Y,Z] using mesh tool.
axis([-8 8 -8 8 -1 2]) %Set plotranges
xlabel('-8 < x < 8') % x-axis label
ylabel('-8 < y < 8') % y-axis label
zlabel('sinc(x*R)')  %z-axis label
