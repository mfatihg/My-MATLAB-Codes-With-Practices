
number1 = 15;
number2 = 25;
number3 = 35;
number4 = 78;

word1 = 'Fatih';
word2 = 'Alex';
word3 = 'Volkan';
word4 = 'Aziz';
word5 = 'Mehmet';
word6 = 'Gogus';
word7 = 'Burak';



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

%% Clear exact variables with clear

clear number* % Clear the variables starting with "number"

clear *d1*    % Clear the variables including "d1"

clear -regexp 2$ % Clear the variables ending with 2


%% Clear exact variables with clearvars

clearvars word3

% Clear exact variables with clearvars except some

clearvars word4 -except word5
clearvars word6 -except -regexp d7$ 
