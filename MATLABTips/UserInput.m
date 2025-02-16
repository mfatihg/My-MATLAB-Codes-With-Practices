
clc, clear all, close all;

%% Taking inputs from users with input() function

year = input('Please, write your birth year: ');

age = 2025 - year;

% Showing the output to the user without disp(), fprint etc.

output = "Your age is " + age


weight = input('How much do you weigh? ');

% Show the output to the user without disp(), fprint etc.

output = "Your weight is " + weight

% Chars or string cannot be written as they are
% '' or "" must be used writing them

name = input('What is your name? '); % 'Fatih' or "Fatih"

% Show the output to the user without disp(), fprint etc.

output = "Your name is " + name


%% Taking inputs as string, no need to use '' or "" anymore while entering inputs


name = input('What is your name? ', "s"); % Fatih as it is no need '' or ""

% Show the output to the user without disp(), fprint etc.

output = "Your name is " + name
