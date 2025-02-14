
%% In table definitions, ; is used instead of ,
% ALSO, '' is used instead of ""
% Since in tables, the same type data goes down

% Not to have dimension error, {} is used for names and countries, so they are cells

names = {'Mehmet'; 'Alex'; 'Burak'; 'Bilal'; 'Ahmet'};
ages = [15; 45; 12; 65; 25];
height = [180; 181; 182; 183; 184];
weight = [70; 71; 72; 73; 74];
country = {'Türkiye'; 'Brazil'; 'Türkiye'; 'Türkiye'; 'Türkiye'};

%% Creating a table with data in variables (matrices, cells etc.)

people = table(names, ages, height, weight, country);
disp(people);


%% Sorting table data

people = sortrows(people, 'ages', 'ascend');
% or
people = sortrows(people, 'ages', 'descend');

%% Extracting data from a table as its type (original data type; matrix, cell etc.)

peopleNames = people.names;
disp(peopleNames); % Extracted as a cell

peopleAges = people.ages;
disp(peopleAges); % Extracted as a matrix



%% DATA LOADING

% Patients is the dataset MATLAB gives us to play with

load patients

% Creating a table with data from the dataset "patients"
% First way is below, Row name is set this way and another way is below this example

patientTable = table(Age, Height, Weight, Systolic, Diastolic, ...
    'RowNames', LastName);

% To have only numeric data from the patientTable
% If there are different data types in variables, the data cannot be
% extracted as a matrix this way
% Since the whole variables data is numerical, we can take them as a matrix

numericData = patientTable.Variables;

%% Calling a whole row or rows

% ROW since we have one row in this example

rows = patientTable.Row;
disp(rows);

%% Calling a specific part of the row

patientNames = patientTable.Row(1:6);
disp(patientNames);

%% Looking at the meanings (Dimension Names) of the table data

meanings = patientTable.Properties.DimensionNames;
disp(meanings);

%% Changing the dimension names

patientTable.Properties.DimensionNames = {'Last Name', 'Information'};
meanings = patientTable.Properties.DimensionNames;
disp(meanings);

%% SECOND WAY to cretae a table from the dataset "patients"
% by making the last names row in a DIFFERENT way

% Creating the table

patientTable2 = table (Gender, Age, Height, Weight, Systolic, Diastolic);

% Making the last names the row

patientTable2.Properties.RowNames = LastName;

%% Calling a whole row or rows

% ROW since we have one row in this example

rows = patientTable2.Row;
disp(rows);

%% Calling a specific part of the row

patientNames = patientTable2.Row(1:6);
disp(patientNames);


%% CALLLING PATIENTS (DATA) AS A WHOLE FROM A TABLE AS MATRIX LIKE FIRST 5 Patient Data
% WITH head() function
% EXAMPLE

firstFivePateient = head(patientTable2, 5);
disp(firstFivePateient);

%% CALLING PATIENTS (DATA) BASED ON A SPECIFIC ROW NAME ABOUT THEM

% In this example, row names are last names

patientInfo = patientTable2({'Miller', 'Davis'},:);
disp(patientInfo);

% Calling patients ages and genders based on their last names

patientInfo = patientTable2({'Miller', 'Davis'}, ["Age" "Gender"]);
disp(patientInfo);

