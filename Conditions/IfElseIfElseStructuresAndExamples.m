
clc, clear all; close all;

disp('Options: Türkiye, France, USA');
disp('Please, enter a country you want to learn the currency unit of:');
countryName = input('Name: ', 's');

%{
THIS WAY IS NOT TRUE

elseif countryName == 'France'
    disp('Euro');
%}

% strcmp(), to compare strings

if strcmp(countryName,'Türkiye') == true
    disp('Turkish Lira (TL)');
elseif strcmp(countryName,'USA') == true
    disp('Dollar');
elseif strcmp(countryName,'France') == true
    disp('Euro');
else
    disp('Undefined country...');

end



%%  Finding max, min, and arithmetic mean values of a matrix

numbers = input('Please enter your matrix like [2 4 5; ...]: ');
disp('1 for Max Value, 2 for Min Value, 3 for Arithmetic Mean Value');
option = input('What do you want to find? (1, 2 or 3): ');

%{
IMPORTANT USE OF FUNCTIONS

   maxValue = max(numbers, [], "all");
   minValue = min(numbers, [], "all");
   matrixMean = mean(numbers,"all");

%}

if option == 1
   maxValue = max(numbers, [], "all");
   fprintf('Max Value: %d\n', maxValue);
elseif option == 2
   minValue = min(numbers, [], "all");
   fprintf('Min Value: %d\n', minValue);
elseif option == 3
   matrixMean = mean(numbers,"all");
   fprintf('Arithmetic Mean Value: %.2f\n', matrixMean);
else
    disp('Please, enter 1, 2 or 3...');
end
