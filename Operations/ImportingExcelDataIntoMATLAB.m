
%% In MATLAB, you can import an Excel file by dragging it into the Workspace, 
% which opens the Import Wizard. Here, select the desired sheets, ranges, and data types 
% (e.g., numeric matrix, table, or cell array). 
% MATLAB enforces data type consistency, meaning mixed data in a column may be stored as a cell array 
% instead of a matrix. Matrices require uniform numeric data, while tables allow mixed types. 
% Size limits depend on available memory, and empty cells may be converted to NaN (numeric) or empty strings (''). 
% After importing, you can perform operations, analyze, visualize, and manipulate the data.

% ALL MATRIX, CELL, TABLE ETC. RULES ARE VALID IN HERE AS WELL

% the data from matrix1.xlsx, matrix2.xlsx, matrix3.xlsx, matrix4.xlsx
% you can work on it

matrix1

multVectors = VarName3 .* VarName2

multMatrices = matrix3 .* matrix1