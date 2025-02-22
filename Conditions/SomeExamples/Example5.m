
clc; clear;

%% Example - 1

% This script prompts the user to enter a 4x4 matrix and a 4-character string.
% It then checks whether each matrix element is even or odd and prints the result.
% It also determines if each character of the string is a vowel or not.
% Finally, it displays both the matrix and the string on the screen.

clc; clear;
% 1) Initialize a 4x4 matrix and a 4-character string (empty at first)

myMatrix = zeros(4, 4);
myString = blanks(4);  % blanks(4) creates a 4-character placeholder

% 2) Prompt the user to enter the matrix elements in sequence
disp('Please enter the 16 elements of the 4x4 matrix one by one:');
for i = 1:4
    for j = 1:4
        prompt = sprintf('Element (%d,%d): ', i, j);
        myMatrix(i,j) = input(prompt);
    end
end

% 3) Check each matrix element; if it is even, display a message
disp('Checking each matrix element if it is even or odd...');
for i = 1:4
    for j = 1:4
        if mod(myMatrix(i,j), 2) == 0
            fprintf('myMatrix(%d,%d) = %d is EVEN.\n', i, j, myMatrix(i,j));
        else
            fprintf('myMatrix(%d,%d) = %d is ODD.\n', i, j, myMatrix(i,j));
        end
    end
end

% 4) Prompt the user to enter a 4-character string
disp('Please enter a 4-character string (e.g., ABCD):');
myStringInput = input('String: ', 's');

% Make sure we only take the first 4 characters (in case user types more)
myString = myStringInput(1:min(4, length(myStringInput)));

% Example check on each character (e.g., is it a vowel?)
disp('Checking each character if it is a vowel (A, E, I, O, U) or not...');
vowels = ['A','E','I','O','U','a','e','i','o','u'];
for k = 1:length(myString)
    if any(myString(k) == vowels)
        fprintf('Character %d (%c) is a VOWEL.\n', k, myString(k));
    else
        fprintf('Character %d (%c) is NOT a vowel.\n', k, myString(k));
    end
end

% 5) Display final matrix and string
disp('The final 4x4 matrix is:');
disp(myMatrix);

disp('The 4-character string is:');
disp(myString);


%% Example - 2

% 1) Define a 3x3 matrix of grades (columns = students, rows = different exams)
%    For example, we have 3 students (columns) and 3 exams (rows).
%    You can also prompt the user for input if desired.

grades = [
    80  75  90;  % Exam 1 for Student1, Student2, Student3
    85  60  88;  % Exam 2
    78  92  84   % Exam 3
];

% 2) Calculate the median of each column
%    (each column represents a student's grades)
studentMedians = median(grades, 1);

% 3) Identify which student has the highest and lowest median
[maxMedianValue, studentMax] = max(studentMedians);
[minMedianValue, studentMin] = min(studentMedians);

% 4) Print the results
fprintf('Median for Student 1: %.2f\n', studentMedians(1));
fprintf('Median for Student 2: %.2f\n', studentMedians(2));
fprintf('Median for Student 3: %.2f\n\n', studentMedians(3));

fprintf('Highest median is %.2f for Student %d.\n', maxMedianValue, studentMax);
fprintf('Lowest median is %.2f for Student %d.\n',  minMedianValue, studentMin);
