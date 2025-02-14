
%%
% In MATLAB, some terms cannot be used as variable names, since they are key words
% Some functions are used to find out some information about variables

%% iskeyword() function is used to find out if an expression is a key word in MATLAB

exp1 = 'for';
exp2 = 'while';
exp3 = 'global';
exp4 = 'watch';

% 0 means "false" while 1 means "true"

Q1 = iskeyword(exp1); % 1 
Q2 = iskeyword(exp2); % 1
Q3 = iskeyword(exp3); % 1
Q4 = iskeyword(exp4); % 0

disp([Q1 Q2 Q3 Q4]);

% To see as "true" or "false"
disp(Q1 + " " + Q2 + " " + Q3 + " " + Q4);


%% isvarname() function is used to see if a name can be used as a variable name

exp5 = 'name';
exp6 = '.surname';
exp7 = 'university student';
exp8 = '8exp';

Q5 = isvarname(exp5); % 1 
Q6 = isvarname(exp6); % 0
Q7 = isvarname(exp7); % 0
Q8 = isvarname(exp8); % 0

disp([Q5 Q6 Q7 Q8]);

% To see as "true" or "false"
disp(Q5 + " " + Q6 + " " + Q7 + " " + Q8);


%% isa() function is used to check the type of a variable (double, int, cell, table, matrix etc.)

% double

exp9 = 10.4;
Q9_1 = isa(exp9, 'double');
Q9_2 = isa(exp9, 'string');

disp([Q9_1 Q9_2]);

% string

exp10 = "Fatih";
Q10_1 = isa(exp10, 'string');
Q10_2 = isa(exp10, 'char');

disp([Q10_1 Q10_2]);

% char

exp11 = 'Fatih';
Q11_1 = isa(exp11, 'double');
Q11_2 = isa(exp11, 'char');

disp([Q11_1 Q11_2]);

% cell

exp12 = {'Fatih' 15 [14 21 32] "Alex"};
Q12_1 = isa(exp12, 'cell');
Q12_2 = isa(exp12, 'char');

disp([Q12_1 Q12_2]);


%% isinteger() function is used to see if data is integer

exp13_1 = 4;
Q13_1 = isinteger(exp13_1);

disp(Q13_1); % It is 0 since exp13 is double

% Converting exp13 into integer with int8() or others

exp13_2 = int8(exp13_1);
Q13_2 = isinteger(exp13_2);

disp(Q13_2); % NOW, it is 1


%% isnumeric() function is used to see if data is numeric

exp14 = 15;
exp15= '15';
exp16 = [15 25];
exp17 = {15};

Q14 = isnumeric(exp14); % 1 
Q15 = isnumeric(exp15); % 0
Q16 = isnumeric(exp16); % 1
Q17 = isnumeric(exp17); % 0

disp([Q14 Q15 Q16 Q17]);


%% istring() function is used to see if data is string

exp18 = "Fatih";
exp19= 'Fatih';
exp20 = ["Fatih" 25];
exp21 = ["Fatih"];
exp22 = {"Fatih"};
exp23 = {"Fatih" 15};

Q18 = isstring(exp18); % 1 
Q19 = isstring(exp19); % 0
Q20 = isstring(exp20); % 1
Q21 = isstring(exp21); % 1
Q22 = isstring(exp22); % 0
Q23 = isstring(exp23); % 0

disp([Q18 Q19 Q20 Q21 Q22 Q23]);


%% iscell() function is used to see if all data in ac ell is string

exp24 = {"Fatih" 15};
exp25= ['Fatih' 15];

Q24 = iscell(exp24); % 1 
Q25 = iscell(exp25); % 0 

disp([Q24 Q25]);


%% iscellstr() function is used to see if data in a cell is char

% its name is cellstr but it checks if the data is char :)))

exp26 = {"Fatih" 15}; % 0
exp27= {'Fatih' 15}; % 0
exp28= {"Fatih" "Alex"}; % 0
exp29= {'Fatih' 'Alex'}; % 1, all is char


Q26 = iscellstr(exp26); % 1 
Q27 = iscellstr(exp27); % 0 
Q28 = iscellstr(exp28); % 1 
Q29 = iscellstr(exp29); % 0 

disp([Q26 Q27 Q28 Q29]);


%% namelengthmax shows the maximum length of a variable name 

maximum = namelengthmax;
disp(maximum);

%% exist is used to check if a variable is on the workspace

% if it is used like exist variableName, ans variable is created and it shows 0 or 1
% if it is used like Q = exist(variableName), Q shows 0 or 1

exist maximum;
Q30 = exist('maximum');
Q31 = exist('maximum1');

disp(Q30);
disp(Q31);


%% isnan() function is used to see if data is NaN

exp32_1 = "10.4";
exp33_1 = "Fatih"; 

% Converting exp32_1 and exp33_1 into double

exp32_2 = double(exp32_1); % 10.4
exp33_2 = double(exp33_1); % NaN, conversion is not succesful

Q32 = isnan(exp32_2); % 0
Q33 = isnan(exp33_2); % 1

disp([Q32 Q33]);


