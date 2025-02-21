
clc, clear all, close all;

%% | and || means OR    & and && means AND
ages = [14 17 17];

if ages(1) >= 18 || ages(2) >= 18 || ages(3) >= 18
    disp('You can take the trip...');
else
    disp('One of you must be 18 or more at least. You cannot take the trip...');
end

% & or && requires all conditions to be true to be true
% | or || requires at least one of conditions to be true to be true
% | or || turns false when all conditions are false


%% The difference between | and ||

% Logical OR (||) Example
x = 0; % False
y = 1; % True
z = x || y; % Logical OR (short-circuiting)
disp(z); % Output: 1

% Element-wise OR using (|)
A = [0 1 0; 1 0 1];
B = [1 0 1; 0 1 0];
C = A | B; % Element-wise logical OR
disp(C);

% Short-circuit OR (||) does not work with arrays
% D = A || B; % This would result in an error

% || is short-circuiting, meaning if the first operand is true, 
% it does not evaluate the second operand.
% Convert binary string to decimal

a = 1;
% Using short-circuit OR (||)
if (a == 1) || (10 / 0 > 1)
    disp('Condition met; second condition not evaluated');
else
    disp('Condition not met');
end


%% The difference between % and &&

% Logical AND (&&) Example
x = 1; % True
y = 0; % False
z = x && y; % Logical AND (short-circuiting)
disp(z); % Output: 0

% Element-wise AND using (&)
A = [0 1 1; 1 0 1];
B = [1 0 1; 0 1 1];
C = A & B; % Element-wise logical AND
disp(C);

% Short-circuit AND (&&) does not work with arrays
% D = A && B; % This would result in an error

% && works only on scalar logical values.
% Is short-circuiting (if the first operand is false, 
% it does not evaluate the second operand).

a = 0;
if (a ~= 0) && (10 / a > 1)
    disp('Condition met');
else
    disp('Condition not met, and second condition was never evaluated');
end

% The first condition (a ~= 0) checks if a is not zero.
% Because && short-circuits, if a is zero, 
% MATLAB will not evaluate (10 / a > 1), thereby preventing a division-by-zero error.

