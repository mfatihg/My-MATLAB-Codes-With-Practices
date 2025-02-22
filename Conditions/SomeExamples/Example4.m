clc, clear all;  % Clear command window and workspace

%% Example - 1: Matrix processing
% For negative numbers: add square of the element
% For positive numbers: add cube of the element

matrix = [-5 9 3; 2 7 -7];   % Define a 2x3 matrix
sumNegative = 0;             % Initialize sum for negative values
sumPositive = 0;             % Initialize sum for positive values

sizeMatrix = size(matrix);   % Get matrix dimensions [rows, cols]
sizeAll = sizeMatrix(1) * sizeMatrix(2);  % Total number of elements in the matrix

i = 1;
while i <= sizeAll
    if matrix(i) < 0
        sumNegative = sumNegative + matrix(i)^2;  % Square negative values and add to sumNegative
    else
        sumPositive = sumPositive + matrix(i)^3;    % Cube positive values and add to sumPositive
    end
    i = i + 1;  % Move to the next element
end

sumNegative   % Display the sum of squares of negative numbers
sumPositive   % Display the sum of cubes of positive numbers

%% Example - 2: String verification
% Check if the first and last letter of the string are 'a' or 'A'

userInput = input('Enter a string: ', 's');  % Prompt user to enter a string

% Check first and last character (using | for OR and & for AND)
if (userInput(1) == 'A' | userInput(1) == 'a') & (userInput(end) == 'A' | userInput(end) == 'a')
    disp('Accepted...');   % Display message if both characters are 'A'/'a'
else
    disp('Not accepted...');  % Display message if condition is not met
end
