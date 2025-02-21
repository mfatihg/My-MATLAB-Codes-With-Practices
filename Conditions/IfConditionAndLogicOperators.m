
clc, clear, clear all, close all;

booleanTrue = true;
booleanFalse = false;
number1 = 17;
matrixA =[4 5 0; 1 7 0; 6 8 0];
logicMatrix = [true false false true];
number2 = booleanTrue + number1;
logicalTrue2 = number2 + number1;

%% if (condition)

% If the condition inside "if" is true, the code under that
% "if condition" works, if false, it is skipped

%% Operators for conditions

% < > => =< == ~=

if number1<15
    disp("It is lower than 15...");
elseif (number1 == 15)
    disp("It is equal to 15...");
else
    disp("It is higher than 15...");
end

% After entering and running any of the if conditions, 
% any if condition else will not run and they will be skipped
% if none of them is run, again they are skipped

disp("You see this text not depending on the if condition");
    



