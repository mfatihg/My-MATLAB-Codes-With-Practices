
%%

% Examples for MATRICES

numbers = [1 5 4; 8 7 6; 3 5 1];
names = ["Fatih", "Fenerbahce", "Ahmet";
         "Selim", "Burak", "Kemal";
         "Mehmet", "Alex", "Samet"];


% If a numeric data is added to a string matrix
% That numeric data will also be a string

% Check it out over the workspace, 1 is stored as a string

names2 = ["Fatih", "Fenerbahce", "Ahmet";
         "Selim", "Burak", "Kemal";
         "Mehmet", "Alex", 1];

% If a string is added to a numeric matrix
% That string will convert the whole matrix into a string matrix

% Check it out over the workspace, it is represented as a string matrix

numbers2 = [1 5 4; 8 7 6; 3 5 "Fatih"];


%% WHAT ABOUT CELLS
%In MATLAB, cell arrays are flexible data structures 
% that can store elements of different types and sizes. 
% They are created using curly braces {} and allow indexing with both {} for content access and () for subarray operations.

% Check it out over the workspace, its class is cell and that:
% Every entry in the cell is a matrix we may say
% A matrix, an integer and any other different-sized data can be stored
% into these entries in the cell
% Also, other cells can be stored into the entries of another cell 
% Dimensions are also important for cells, they should be consistent

% Storing different types together

cell1 = {1, 6, 7;
        "Fatih", 11.4, 'Char'};

% Storing different types together even matrices

cell2 = {1, [1 4 8], 7;
        "Fatih", 11.4, 'Char'};

% Storing different types together even cell into cell

cell3 = {1, [1 4 8], {4 5 "Fatih" 'Alex'};
        "Fatih", 11.4, 'Char'};

%% Insterting new elements into an existing matrix

cell4 = {1, 6, 7};
cell4(2, :) = {"Fatih", 11.4, 'Char'};
cell4(3, :) = {1, [1 4 8], "Alex"};

disp(cell4);

%% Calling specific parts from a cell

% A row or a column

row1 = cell4(1, :);
disp(row1);

column1 = cell4(:, 1);
disp(column1);

% Specific Parts

columns2 = cell4(:, [1 3]);
disp(columns2);

% A Specific part

columnRow = cell4([2 3], [1 3]);
disp(columnRow);

%% Calling a specific element from a cell (the element at the exact location)

element1 = cell4{1, 3};
disp(element1);

element2 = cell4{3, 2};
disp(element2);

%% Creating an empty cell with cell() function

newCell = cell(3); % Creating 3x3 cell
disp(newCell);

% Inserting elements into this new cell created with the cell() function

newCell(1, :) = {1, [1 4 8], "Alex"};
newCell(2, :) = {"Fatih", 11.4, 'Char'};
disp(newCell);

% Creating 3x2 cell

newCell2 = cell(2, 3); % Creating 2x3 cell
disp(newCell2);

% Inserting elements into this new cell created with the cell() function

newCell2(1, :) = {1, [1 4 8], "Alex"};
newCell2(2, :) = {"Fatih", 11.4, 'Char'};
disp(newCell2);