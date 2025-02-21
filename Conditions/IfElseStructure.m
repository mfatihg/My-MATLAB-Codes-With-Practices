
clc; clear all; close all;

%% Age Comparison 

name = input('Your name: ', 's');
age= input('Your age: ');


if age <= 18

    fprintf('Dear %s, your age is %d, so you cannot get a driver license...\n', name, age);
else
    fprintf('Dear %s, your age is %d, so you can get a driver license...\n', name, age);
end

disp('The code continues to run...');


%% Number Comparison

number1 = input('Enter the first number: ');
number2 = input('Enter the second number: ');

if number1 == number2
    fprintf('The entered numbers are the same...\n');
elseif number1 > number2
    fprintf('The first number is higher...\n');
else 
    fprintf('The second number is higher...\n');
end


%% Letter Comparison

cityName = input('Enter a city starting with "G": ', 's');

if cityName(1) == 'G' || cityName(1) == 'g'
    fprintf('Accepted...\n'); % Gaziantep
else 
    fprintf('Try again later\n');
end

