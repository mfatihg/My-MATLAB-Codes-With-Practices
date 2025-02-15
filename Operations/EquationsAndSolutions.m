clc;
clear all;
close all;
%% First Equation = ((x + y) / 2) * z 

x = 5;
y = 45;
z = 25;

% With operands

firstEq = ((x + y) / 2) * z 

% With functions start from outside

firstQqFunct = times(mrdivide(plus(x, y), 2), z)

%% Second Equation = (a^2 + a + 3) / (a^3 + 3 * a^2 + 5*a + 1)

a = 3;

% With operands

numerator = (a^2 + a + 3)
denominator = (a^3 + 3*a^2 + 5*a + 1 )

secondEq = numerator / denominator

% With functions, start from outside

numeratorFunct = plus(plus(power(a, 2), a), 3)
denominatorFunct = plus(plus(plus(power(a, 3), times(3, power(a, 2))), times(5, a)), 1)

secondEqFunct = mrdivide(numeratorFunct, denominatorFunct)
