clc, clear all;  % Clear command window and workspace

%% Example - 1: Check divisibility by 15 without direct division

% Prompt the user to enter a number
number = input('Please, enter a number: ');

% Check if the number is divisible by both 3 and 5 (i.e., divisible by 15)
% mod(number, 3) == 0 checks for divisibility by 3
% mod(number, 5) == 0 checks for divisibility by 5
if mod(number, 3) == 0 && mod(number, 5) == 0
    disp('Divisible by 15 without remainder...');
else
    disp('It cannot be divided by 15 without remainder...');
end

%% Example - 2: Display part of the day based on time input

% Prompt the user to enter an hour (e.g., 12, 21, 9, 5, etc.)
time = input('What time is it? (Enter like 12, 21, 9, 5 etc.) : ');

% Check the input time and display the corresponding part of the day
if time >= 0 && time <= 5
    disp('Night...');     % Time between 0 and 5 hours
elseif time > 5 && time <= 10
    disp('Morning...');   % Time between >5 and 10 hours
elseif time > 10 && time <= 16
    disp('Noon...');      % Time between >10 and 16 hours
elseif time > 16 && time <= 23
    disp('Evening...');   % Time between >16 and 23 hours
else
    disp('Error...');     % Input outside the expected range (0-23)
end
