
number = 14;
myString = "Fatih";
myChar = 'Fenerbahce';

% My matrix
myMatrix = [4, 8, 9, 2, 3;
            8, 7, 1, 6, 7;
            5, 1, 3, 8, 9];

%% Calling the elements from the matrix with row and column numbers

value1 = myMatrix(1,4); % The element in the first row and fourth column
disp(value1);

value2 = myMatrix(3,1);
disp(value2);

value3 = myMatrix(2,5);
disp(value3);

%% Calling the elemts from the matrix with one value (column-based)

value4 = myMatrix(7); % Calling 9, start counting from 4 down in the first column
disp(value4);

value5 = myMatrix(1);
disp(value5);


%% Calling different elements from the matrix as a matrix

values6 = myMatrix([4, 5, 1]); % Callling the fourth, fifith and first elements as a matrix
disp(values6);

values7 = myMatrix([4, 5, 1 ; 2, 7, 2]); % Callling the elements as a matrix
disp(values7);

%% Calling different elements from a specific row as a matrix

values8 = myMatrix([1, 3], 2); % Callling the elements as a matrix in a column
disp(values8);

values9 = myMatrix(2, [1, 3]); % Callling the elements as a matrix in a row
disp(values9);

%% Calling the whole row or column of the matrix

row2 = myMatrix(2, :); % : means all in MATLAB
disp(row2);

column3 = myMatrix(:, 3);
disp(column3);

% :, : means to call the whole matrix

copyMyMatrix = myMatrix(: , :); % The whole rows and columns
disp(copyMyMatrix);

%% Calling the elements between the border

values10 = myMatrix(1:5); % Calling the values between 1 and 5
disp(values10);

values11 = myMatrix(2:9); % Calling the values between 1 and 5
disp(values11);

% OR, this way is also common to call without assigning

copyMyMatrix = 1 : 8; % Calling the elements between 1 and 8
disp(copyMyMatrix);

copyMyMatrix = 2 : 6;
disp(copyMyMatrix);

%% Calling the elements between the border taking every second value from the list

values12 = myMatrix(2 : 2 : 9); % Calling the every second element between 1 and 5
disp(values12);

% OR

copyMyMatrix = 1 : 2 : 8; % Calling the every second element between 1 and 8
disp(copyMyMatrix);

% By changing the value in the middle, possible to change the increment

%% Calling a specific part of the matrix within specific columns and rows

% values = myMatrix(rows, columns);

values13 = myMatrix(1:2, 3:4); % Calling the common elements of the first and second rows and the third and fourth columns 
disp(values13);

values14 = myMatrix(2:3, 1:2); % Calling the common elements of the second and third rows and the first and second columns 
disp(values14);

%% Creating a new matrix by assigning elements one-by-one

matrix2(1) = 1;
matrix2(2) = 10;
matrix2(5) = 11; % Since no value is assigned to the third and fourth space, they are 0
disp(matrix2);

matrix3(1) = 1;
matrix3(2) = 10;
matrix3(5) = 11; % Since no value is assigned to the third and fourth space, they are 0
matrix3(2,2) = 15; % Except this one, all is 0 in the second row
disp(matrix3);

