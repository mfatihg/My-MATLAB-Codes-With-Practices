
clc, clear all, close all;

%% disp()

% Example 1

disp("MATLAB Programming");
disp(" ");   % For some gap

% Example 2

grade = input('What is your grade? ');
disp(" ");   % For some gap
disp(grade);

% or with num2str(), to convert numeric to string

disp(['Your grade is ' num2str(grade)]);

% Example 3 - displaying matrices

values = [10 45 87 10];
disp(" ");  % For some gap
disp(values);

% Example 4 - displaying number and strings or chars together

phoneBrand = input('Phone Brand: ', "s");
price = input('Price: ' );
disp([phoneBrand ' brand phone is ' num2str(price) ' TL']);
disp(" ");  % For some gap


%% Example 4 - sprintf()

phoneBrand = input('Phone Brand: ', "s");
price = input('Price: ' );

% sprintf()

% \n is used to 
% %s represents string while %d represents double

text = sprintf('%s brand phone is %d TL\n', phoneBrand, price);

disp(text);
disp(" ");  % For some gap


%% Example 5 - fprintf()

phoneBrand = input('Phone Brand: ', "s");
price = input('Price: ' );

% fprintf()

% NO DISP()
% \n is used to move to the low line
% %s represents string while %d represents double

fprintf('%s brand phone is %d TL\n', phoneBrand, price);

disp(" ");  % For some gap

%% Creating links

% General Template, just change "URL ADDRESS" and "Message" parts

msgTemplate = 'For more information <a href="URL ADDRESS"> MESSAGE </a>';

msg = 'For more information <a href="https://www.google.com.tr/?hl=tr"> Click </a>';
disp(msg);
