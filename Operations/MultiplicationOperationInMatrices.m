
%% Dimensions matter, they must be consistent
% The multiplication order matters as well
% A*B IS NOT EQUAL TO B*A

% USE .* INSTEAD OF *

A = [5 2; 0 1; 1 9]
B = [2 3; 4 1; 0 2]

mulAB = A .* B
mulBA = B .* A