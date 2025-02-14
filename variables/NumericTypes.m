
%% integer
number = 8;
whos number; % to have some info about number and its type

%% decimal
number2 = 10.4;
whos number2; % 8 bytes

%% to occupy less room in the memory, use single function

number3 = single(10.4);
whos number3;  % 4 bytes anymore

%% int function, it is 8 bits (1 byte), so it holds the values between -128 and 127

number4 = int8(10.4);
whos number4; % 1 byte

number5 = int8(-129); %% if you go beyond the border, it becomes equal to the close border 
disp(number5); % it shows -128

%% int16

number6= int16(10.4);
whos number6; % 2 bytes

%% int32

number7 = int32(10.4);
whos number7; % 4 bytes

%% int64

number8 = int64(10.4);
whos number8; % 8 bytes

%% Those ones above were signed variables, so they take - and + values between some borders

%% Unsigned ones takes values starting from 0 to any (depending on the variable type)

number9 = uint8(-10.4);
whos number9;
disp(number9); % 0 we see

number10 = uint8(259);
whos number10;
disp(number10); % 255 we see, since uint8 takes the values between 0 and 255

number11 = uint16(450);
whos number11;
disp(number11); 

number12 = uint32(10.4);
whos number12;
disp(number12); 

number13 = uint64(3);
whos number13;
disp(number13); 
