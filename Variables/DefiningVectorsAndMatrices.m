
%% Defining a vector by putting spaces between parameters

vector1 = [1 7 3 5 8];
whos vector1;

%% Defining a vector by putting commas between parameters

vector2 = [1, 7, 3, 5, 9, 4];
whos vector2;

%% Defining Matrices

matrix1 = [2 5 7 ; 8 7 2 ; 6 4 1];
whos matrix1;
disp(matrix1);

matrix2 = [1, 9, 4 ; 8, 1, 3 ; 7, 5, 9];
whos matrix2;
disp(matrix2);

% Line-by-line may be written as well

matrix3 = [1, 9, 4 ; 
           8, 1, 3 ; 
           7, 5, 9];
whos matrix3;
disp(matrix3);