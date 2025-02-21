
clc, clear all;

numbers = [12 45 2 65;
            1 7 4 5;
            10 1 3 9;
            14 5 2 54];

% To see the numbers that are lower than 10 in logical form
numbers1 = numbers < 10 
% To see the numbers that are higher than 15 in logical form
numbers2 = numbers > 15

% To see the numbers that are lower than 10 in decimal
% Using logical results
numbers3 = numbers(numbers1)

% To see the numbers that are lower than 10 in decimal
% Using logical results
numbers4 = numbers(numbers2)


%% find()

% To see the locations of the numbers that are lower than 10 
numbers5 = find(numbers < 10)

% To see the numbers that are lower than 10 in decimal
numbers5 = numbers(numbers5)


%% &&

% To see the numbers that are lower than 10 and higher than 4 in decimal
numbers(numbers < 10 & numbers > 4)


%% mod()

numbers((numbers < 20) & (mod(numbers, 2) ~= 0) & (numbers ~= 2))


%% Assigning zero or NaN to to certain values

% Making the numbers lower than 10 zero 
numbers6 = numbers;
numbers6(numbers6 < 10) = 0

% Making non-zero numbers NaN 
numbers6(numbers6 ~= 0) = NaN

% Making non-NaN numbers -1 
numbers6(~isnan(numbers6)) = -1
