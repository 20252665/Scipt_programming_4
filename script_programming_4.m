clear;
clc;
close all;

%% TASK 1(a): f(x,y) = sin(x^2 + y^2)

% Generate random x and y values
x = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);
y = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);

% Create coordinate grid
[X, Y] = meshgrid(x, y);

% Calculate function values
Z1 = sin(X.^2 + Y.^2);

% Plot the 3D surface
figure(1);
h1 = surf(X, Y, Z1);

% Customize appearance
set(h1, 'FaceColor', [0.2 0.6 0.9]);
shading interp;
grid on;
view(50, 50);

% Add title and axis labels
title('Task 1(a): f(x,y) = sin(x^2 + y^2)');
xlabel('X axis');
ylabel('Y axis');
zlabel('f(x,y)');

% Define x and y values from -2 to 1
x_vals = -2:0.05:1;
y_vals = -2:0.05:1;

% Create coordinate grid
[X2, Y2] = meshgrid(x_vals, y_vals);

% Calculate function values
Z2 = 1 - 2*(X2.^2) - 3*(Y2.^2);

% Plot the 3D surface
figure(2);
h2 = surf(X2, Y2, Z2);

% Customize appearance
set(h2, 'FaceColor', [0.9 0.4 0.2]);
shading faceted;
grid on;
view(60, 60);

% Add title and axis labels
title('Task 1(b): f(x,y) = 1 - 2x^2 - 3y^2');
xlabel('X axis');
ylabel('Y axis');
zlabel('f(x,y)');


% Define x and y values
x = -2:0.05:2;
y = -2:0.05:2;

% Create coordinate grid
[X3, Y3] = meshgrid(x, y);

% Calculate function values
Z3 = 1 - (X3.^2 + Y3.^2);

% Plot the surface
figure(3);
h3 = surf(X3, Y3, Z3);

% Set solid blue color and transparency
set(h3, 'FaceColor', [0 0 1], ...
    'EdgeColor', 'none', ...
    'FaceAlpha', 0.5);

% Customize appearance
grid on;
view(45, 30);

% Add title and axis labels
title('Complementary Task: Blue Transparent Surface');
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');
