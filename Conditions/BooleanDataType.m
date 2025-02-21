clc, clear, clear all, close all;

%% It stores 0 "False" and 1 "True" in it

value1 = true
value2 = false


%% Any value different from 0 is equal to 1 "True"
% Only zero is equal to 0 "False"

% logical()

% To see the logic representation of any value, use logical()

value3 = -999;
value4 = 15;
value5 = 0;

logicalValue3 = logical(value3)
logicalValue4 = logical(value4)
logicalValue5 = logical(value5)


%% The logical representation of the elements of a matrix

matrixA = [1 4 8; 0 0 6; 8 4 0];
logicalMatrixA = logical(matrixA)

