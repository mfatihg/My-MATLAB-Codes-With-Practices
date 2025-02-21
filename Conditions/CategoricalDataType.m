clc, clear all; % Clear command window and workspace

%% First Example: Weather data table
temperature = [18; 25; 24; 32; 35];         % Temperature values
dates = {'01-03-2025'; '02-03-2025'; '03-03-2025'; '04-03-2025'; '05-03-2025'};  % Dates
cities = {'Gaziantep'; 'Adana'; 'Kayseri'; 'Istanbul'; 'Ankara'};  % City names
myCategory = categorical(cities);             % Convert city names to categorical type

myTable = table(myCategory, dates, temperature);  % Create table with columns

% Select rows where conditions are met
myIndex = myTable.myCategory == 'Gaziantep';   % Find rows for Gaziantep
myIndex2 = myTable.temperature == 25;          % Find rows where temperature is 25
data = myTable(myIndex, :)                     % Extract rows for Gaziantep
data2 = myTable(myIndex2, :)                   % Extract rows with temperature 25

%% Second Example: Student data table
students = {'Smart'; 'Hardworking'; 'Lazy'; 'Middle'};  % Student categories
studentNumbers = [1907; 1234; 5647; 7895];   % Student numbers
names = {'Fatih'; 'Mehmet'; 'Ahmet'; 'Kemal'}; % Student names
myCategory = categorical(students);           % Convert student categories to categorical type
myTable = table(names, studentNumbers, myCategory); % Create table for student info

% Select rows based on conditions
myIndex = myTable.myCategory == 'Fatih';        % Index for 'Fatih' category
myIndex2 = myTable.studentNumbers == 1234;       % Index for student number 1234
data = myTable(myIndex, :)                      % Row for category 'Fatih'
data2 = myTable(myIndex2, :)                    % Row for student number 1234

%% Displaying and modifying categories
myCategories = categories(myCategory)           % Display current categories

myCategory(4,1)                                  % Access category at 4th row
myCategory(2)                                    % Access category at 2nd row

myCategory(5) = 'No Comment';                    % Insert a new category value
myCategories = categories(myCategory)           % Display updated categories

myTable(:, :)                                    % Display the entire table

% Adding a new student row to the table
names{5} = 'Tarık';                              % Add new name
studentNumbers(5) = 8526;                        % Add new student number
myTable = table(names, studentNumbers, myCategory); % Update table with new row
myTable(:, :)                                    % Display updated table


%% 

values = [10 15 20; 15 10 20; 20 10 25];
% 10- Red 15 - Green 20 - Blue 25 - Purple

colors = {'Red' 'Green' 'Blue' 'Purple'};
myCategory = categorical(values, [10 15 20 25], colors);

myCategories = categories(myCategory)

summary(myCategory)

myIndex = myCategory == 'Red';
data = myCategory(myIndex)


%% Define values and mapping

values = [10 15 20; 15 10 20; 20 10 25];  % Matrix of numeric codes
% 10- Red, 15 - Green, 20 - Blue, 25 - Purple

colors = {'Red' 'Green' 'Blue' 'Purple'};  % Corresponding color names

% Create categorical array mapping numeric values to color names
myCategory = categorical(values, [10 15 20 25], colors);

myCategories = categories(myCategory)  % Display all categories

summary(myCategory)  % Show summary statistics of the categorical array

% Find and extract elements that are 'Red'

myIndex = myCategory == 'Red'
data = myCategory(myIndex)


%% Discretize values into categories

x = [0.2; 0.45; 0.65; 0.1; 0.42; 0.58; 0.9; 0.8; 0.7; 0.6];  % Column vector of values

% Discretize 'x' using specified bin edges:
%   [0, 0.25) -> 'Low', [0.25, 0.75) -> 'Middle', [0.75, 1] -> 'High'
y = discretize(x, [0 .25 .75 1], 'categorical', {'Low', 'Middle', 'High'});

summary(y)  % Display summary statistics of the categorical array 'y'

