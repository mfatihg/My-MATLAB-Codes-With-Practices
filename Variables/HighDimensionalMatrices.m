
%% Analysis on 2 dimensional matrices

numbers = [1 2 3 4; 5 6 7 8; 9 10 11 12]; % 3x4

% Numbers is a 2 dimensional matrix as seen
% Think of it like a one-page book

value1 = numbers(1, 1, 1);
disp(value1);

value2 = numbers(1, 2, 1);
disp(value2);

% The calling below cannot be done, for the reason the third parameter
% cannot go beyond 1 since the matrix is 2 dimensional

%{
AN ERROR IS TAKEN
value3 = numbers(1, 1, 2);
disp(value3);
%}

%% Increasing the dimension of the matrix to 3

% The dimension is not directly relative to the page number

numbers(:, :, 2) = [4 6 2 7; 1 7 9 2; 3 5 6 1]; 

% Now, no error is taken below, since the matrix is 3 dimensional anymore

value3 = numbers(1, 1, 2);
disp(value3);

% First Page

firstPage = numbers(:, :, 1);
disp(firstPage);

% Second Page

secondPage = numbers(:, :, 2);
disp(secondPage);

%% To create high dimensional matrices, cat() function is used
% cat(dimension, your matrix, the matrix to be added)

numbers3 = cat(3, numbers, [3 4 6 8; 9 4 1 3; 3 4 1 9]);

% With this addition, the third page is created

% Third Page

thirdPage = numbers3(:, :, 3);
disp(thirdPage);

%% Using different matrices to create a high dimesional matrix
% cat(dimension, your matrix, the matrix to be added)

numbers5 = cat(3, numbers, numbers3); % 2 pages + 3 pages 
disp(numbers5); % the book with 5 pages

%% Assigning a constant value to specific parts of the matrix

copyOfNumbers = numbers5;

% Making the whole values 2

copyOfNumbers(:, :, 1) = 2; % All values are attained as 2 in the first page 
disp(copyOfNumbers(:, :, 1)); 

% Making the whole values 0

copyOfNumbers(:, :, 2) = 0; % All values are attained as 0 in the second page 
disp(copyOfNumbers(:, :, 2)); 

% Changing specific values 

copyOfNumbers(3, 3, 2) = 15; % The value is attained as 15 in the second page 
disp(copyOfNumbers(:, :, 2)); 

%% Calling specific parts from different pages

pageValues = copyOfNumbers(:, 1:3, :); % The values between the first and third columns
disp(pageValues);

%% Calling specific columns or rows or both from different pages

pageValues1 = copyOfNumbers(:, [1 4], :); % The values in the first and fourth columns
disp(pageValues1);

pageValues2 = copyOfNumbers([1 3], :, :); % The values in the first and third rows
disp(pageValues2);

pageValues3 = copyOfNumbers(:, :, [1 2]); % The values in the first and second pages
disp(pageValues3);


%% Think of a 4 dimensional matrix as every page has a book

