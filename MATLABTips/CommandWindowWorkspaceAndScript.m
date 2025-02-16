
%% In MATLAB, the Command Window, Script Editor, and Workspace are interconnected. 
% You can define variables directly in the Command Window, which are stored in the Workspace. 
% Changes made in the Workspace update immediately in the Command Window and vice versa. 
% Scripts, written in the Script Editor, execute multiple commands sequentially and can access or modify 
% Workspace variables. Running a script does not retain temporary variables unless explicitly saved. 
% You can clear, modify, or inspect data using commands like clear, who, and whos.

%% By writing these lines on the command window, you create new variables and many other things...

number1 = 5;

% Change it

number1 = 6;

% Make operations and so on... Many things we do in scripts can be done on the command window as well

number2 = 7;
number1 + number2

%% In MATLAB, the Command Window, Script Editor, and Workspace are interconnected. 
% Variables defined in the Command Window appear in the Workspace, and scripts execute multiple commands sequentially. 
% Use clear to remove variables, clc to clear the command window, and close all to close all figures. 
% Other useful commands include who (lists variables), whos (detailed variable info), 
% clearvars (removes specific variables), clf (clears figures without closing), 
% dbstop (sets breakpoints), and diary (logs command history). 
% Scripts modify the Workspace but do not retain temporary variables unless saved explicitly.

%{

clear;
clear all;
clc;
close all;
clearvars;
clf;
whos number1;
dbstop ...;
diary ... ;

%}


%% To display the data on the command wincow, do not use ; in the end

number1;
number2

A = [1 5; 87; 96]



%% Call the .m file in the same folder as this file is in
% Just write the name of the .m folder which is ToCall in this example

ToCall  % The variables and other things are defined in here and can be used here


%% If the name of the folder is written on the command window, the file is run
% In this example, CommandWindowWorkspaceAndScript is written

CommandWindowWorkspaceAndScript

