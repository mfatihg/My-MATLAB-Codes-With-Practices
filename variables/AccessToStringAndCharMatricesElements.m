
stringName = "Fatih";
charName = 'Fatih';

%% String is stored as one piece that is why its size is 1x1

firstCharOfStringName = stringName(1);
disp(firstCharOfStringName); % Fatih is shown since the size is 1x1
% The calling below is not applicable for the reason there is nothing in
% the second space

%{ 
AN ERROR IS TAKEN HERE
secondCharOfStringName = stringName(2);
disp(secondCharOfStringName);
%}

% Same in other variables as well

number = 15;
firstNumberOfNumber = number(1);
disp(firstNumberOfNumber); % 15 is shown since the size is 1x1

%{ 
AN ERROR IS TAKEN HERE
secondNumberOfNumber = number(2);
disp(secondNumberOfNumber);
%}

%% Char is stored character-by-charecter that is why its size is 1x5

firstCharOfCharName = charName(1); % F is shown since the size is 1x5
secondCharOfCharName = charName(2); % a is shown since the size is 1x5

disp(firstCharOfCharName);
disp(secondCharOfCharName);

%% To be able to access characters of a string, string is converted into char
% char() function is used

whos stringName; % Before the conversion

charName2 = char(stringName);
whos charName2; % After the conversion

% Access to the characters of the converted string

firstCharOfCharName2 = charName2(1);
secondCharOfCharName2 = charName2(2);

disp(firstCharOfCharName2);
disp(secondCharOfCharName2);

%% Access to elements of a string matrix

names = ["Mehmet", "Fatih", "Ahmet";
         "Can", "Sena", "Murat";
          "Burak", "Leyla", "Kevser"];
disp(names);

firstElementOfNames = names(1);
sixthElementOfNames = names(6); 
AnElementOfNames = names(2,3); 

disp(firstElementOfNames);
disp(sixthElementOfNames);
disp(AnElementOfNames);

% Conversion to char to access to characters

charNames1 = char(names(1)); % Conversion

firstCharOfCharNames1 = charNames1(1);
fifthCharOfCharNames1 = charNames1(5);

disp(firstCharOfCharNames1);
disp(fifthCharOfCharNames1);

%% Access to elements of a char matrix

cities = ['Istanbul', 'Kayseri';
          'Ankara', 'Gaziantep';
          'Aydinaaaaa', 'Mugla'];

% In char matrices, the size of each row must be equal to each other
% For this reason, Aydinaaaaa is written that way

% Another solution not to have an error is using {} pranthesis like:

%{
cities = ['Istanbul', 'Kayseri';
          'Ankara', 'Gaziantep';
          'Aydinaaaaa', 'Mugla'];
%}

names2 = ['Kemal', 'Fatih', 'Ahmet';
         'Canan', 'Selim', 'Murat';
          'Burak', 'Leyla', 'Beyza'];

% Calling characters from the matrix

char1FromNames2 = names2(3);
disp(char1FromNames2);

char2FromNames2 = names2(2,6);
disp(char2FromNames2);

% Calling rows and columns from the matrix

rowFromNames2 = names2(3,:);
disp(rowFromNames2);

columnFromNames2 = names2(:,1);
disp(columnFromNames2);

% Calling names from the matrix by locating the exact place

oneNameFromNames2 = names2(1, 1:5);
disp(oneNameFromNames2);

oneNameFromNames2 = names2(2, 6:10);
disp(oneNameFromNames2);

