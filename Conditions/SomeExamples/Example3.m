clc, clear all;  % Clear command window and workspace

%% Example - 1: Sum matrix values and check condition

% Define a 3x3 matrix
matrix = [41 4 5;
          14 10 2;
          5 16 4];

% Sum all elements using three different methods

% Method 1: Using built-in function to sum all elements
sumMatrix1 = sum(matrix, "all")

% Method 2: Sum by treating the matrix as a single vector (linear indexing)
sumMatrix2 = matrix(1) + matrix(2) + matrix(3) + matrix(4) + matrix(5) + ... 
             matrix(6) + matrix(7) + matrix(8) + matrix(9)

% Method 3: Sum by explicitly indexing each element using row and column indices
sumMatrix3 = matrix(1, 1) + matrix(1, 2) + matrix(1, 3) + matrix(2, 1) + matrix(2, 2) + ... 
             matrix(2, 3) + matrix(3, 1) + matrix(3, 2) + matrix(3, 3)

% Check if the total sum is greater than 100
if sumMatrix1 > 100
    disp('Accepted...');
else
    disp('Not accepted...');
end

size(matrix)  % Display the size of the matrix

%% Example - 2: Replace elements below the mean with 0

% Define a 2x3 matrix
matrix = [41 1 22;
          10 17 5];

% Compute the arithmetic mean of all matrix elements
meanMatrix = mean(matrix, "all")

% Get total number of elements in the matrix
sizeMatrix = size(matrix);
sizeAll = sizeMatrix(1) * sizeMatrix(2);

% Loop through each element; if it's less than the mean, set it to 0
i = 1;
while i <= sizeAll
    if matrix(i) < meanMatrix
        matrix(i) = 0;
    end
    i = i + 1;
end

matrix  % Display the modified matrix
