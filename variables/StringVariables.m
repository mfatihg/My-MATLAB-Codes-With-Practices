
%% String
name = "Fatih"; % since we used "", the class is string
whos name; % it has 5 characters, its size 1x1 since the class is string
disp(name); % it is 1x1, since the strings are strored as one whole piece

%% Char
surname = 'Fatih'; % since we used '', its class is char
whos surname; % it has 5 characters, its size 1x5 since the class is char
disp(surname); % it is 1x5, since the chars are strored character-by-character

%% The difference between char and integer
% Observe the difference 

number = 10;
whos number;

charNumber = '10';
whos charNumber;