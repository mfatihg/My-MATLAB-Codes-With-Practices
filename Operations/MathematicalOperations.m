
number1 = 10;
number2 = 15;
number3 = 20;

%% variable = expression operand expression

%% Summation 

% With + operand

sum1 = number1 + number2
sum2 = number2 + number3

% With plus() function

sum3 = plus(number1, number2)
sum4 = plus(number2, number3)

%% Subtraction 

% With - operand

subt1 = number1 - number2
subt2 = number2 - number3

% With minus() function

subt3 = minus(number1, number2)
subt4 = minus(number2, number3)

% - operand is also used to change sign

number4 = -29
number4 = -number4   % By putting minus in front, -1*number4 is done in actual

% uminus is also used to change sign

number4 = uminus(number4)  % -29 again

%% Multiplication 

% With * operand

mult1 = number1 * number2
mult2 = number2 * number3

% With times() function

mult3 = times(number1, number2)
mult4 = times(number2, number3)


%% Division 

% With / operand

div1 = number1 / number2
div2 = number2 / number3

% With mrdivide() function, mr means to divide right to left

div3 = mrdivide(number1, number2)
div4 = mrdivide(number2, number3)

% With mldivide() function, ml means to divide left to right

div5 = mldivide(number1, number2)
div6 = mldivide(number2, number3)


%% Square 

% With ^ operand

sq1 = number1 ^ 2
sq2 = number2 ^ 2

% With power() function

sq3 = power(number1, 2)
sq4 = power(number2, 2)


%% power() is used as power(number, to power)

% cube

% With ^ operand

cube1 = number1 ^ 3
cube2 = number2 ^ 3

% With power() function

cube3 = power(number1, 3)
cube4 = power(number2, 3)

% SO ON...


