% van der Pol oscillator
% x'' - mu*(1-x^2)*x' + x = 0
% streamlines of the vector field

clear
close all

% Parameter of the Van der Pol oscillator
mu = 1;

% state space
x = linspace(-2,2,20);
y = linspace(-2,2,20);
[X,Y] = meshgrid(x,y);

% vector field
U = Y;
V = mu*(1-X.^2).*Y - X;

% plot
figure
quiver(X,Y,U,V)
xlabel('x')
ylabel('y')
title('Van der Pol oscillator')
