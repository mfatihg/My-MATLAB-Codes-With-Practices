
%% Char cell to string cell and addition

namesChar1 = {'Fatih ' 'Alex ' 'Volkan '};
surnamesChar1 = {'Gogus' 'De Souza' 'Demirel'};

% To sum, conver char cell to string cell

namesStr1 = string(namesChar1);
surnamesStr1 = string(surnamesChar1);

people1 = namesStr1 + surnamesStr1

% CANNOT BE DONE
% people = namesStr1 + surnamesStr1 


%% Char cell to char and addition

namesChar2 = {'Fatih' 'Alex' 'Volkan'};
surnamesChar2 = {'Gogus' 'De Souza' 'Demirel'};

namesToChar = char(namesChar2);
surnamesToChar = char(surnamesChar2);

people2 = namesToChar + " " + surnamesToChar % With "", it becomes string

% NOT APPLICABLE, THE SIZES ARE NOT CONSISTENT IN HERE
% people2 = namesToChar + surnamesToChar

% CANNOT BE DONE
% people2 = namesChar2 + surnamesChar2 

%% String cell and addition

namesStr2 = {"Fatih" "Alex" "Volkan"};
surnamesStr2 = {"Gogus" "De Souza" "Demirel"};

people3 = namesStr2 + " "+ surnamesStr2 % With "", it becomes string

% CANNOT BE DONE
% people3 = namesStr2 + surnamesStr2 


%% Char cell and addition

namesChar3 = {'Fatih' 'Alex' 'Volkan'};
surnamesChar3 = {'Gogus' 'De Souza' 'Demirel'};

people4 = namesChar3 + " "+ surnamesChar3 % With "", it becomes string

% CANNOT BE DONE
% people4 = namesChar3 + surnamesChar3 

