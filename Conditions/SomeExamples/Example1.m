clc, clear all;  % Clear command window and workspace

%% Example - 1: Compute y based on the sign of user input x
x = input('Please, enter a number: ');  % Get user input

if x < 0
    y = abs(x)      % If x is negative, set y to its absolute value
elseif x == 0
    y = -1          % If x is zero, set y to -1
else
    y = x/2         % If x is positive, set y to half of x
end

%% Example - 2: Check if the input number falls within specific ranges
number = input('Please, enter a number: ');  % Get user input

% Check if number is between 100-150 or between 45-60
if (number > 100 && number < 150) || (number > 45 && number < 60)
    disp('Accepted...');    % Display accepted if condition is true
else
    disp('Not accepted...');  % Display not accepted otherwise
end
