
%% In MATLAB, a Map is a data structure that stores key-value pairs, allowing efficient data retrieval using unique keys. 
% It is created using the `containers.Map` function and supports dynamic key-based indexing.

% Define keys and values

keySet = [27 6 34 35];
valueSet = {'Gaziantep' 'Ankara' 'Istanbul' 'Izmir'};

% Map the values with keys

map = containers.Map(keySet, valueSet);

% Values can be called with their keys

value1 = map(27);
disp(value1); % Gaziantep

% To see data number in the map

dataNumber = map.Count;
disp(dataNumber); % 4

% To find out data type of keys

keyType = map.KeyType;
disp(keyType); % double

% To find out data type of values

valueType = map.ValueType;
disp(valueType); % char


%% If two same keys map one value, the last value is represented by that key

keySet2 = [27 6 34 35 27];
valueSet2 = {'Mehmet' 'Selim' 'Burak' 'Samet' 'Fatih'};
map2 = containers.Map(keySet2, valueSet2);

value2 = map2(27);
disp(value2); % Fatih, not Mehmet


%% String keys with double values

keySet3 = {'Selim' 'Burak' 'Fatih'};

selimGrades = [55 68];
burakGrades = [95 90];
fatihGrades = [90 95];

valueSet3 = {selimGrades burakGrades fatihGrades};
map3 = containers.Map(keySet3, valueSet3);

value3 = map3('Fatih'); % The key is string, so call with it
disp(value3); % 90 95


%% String keys with double values
% Data numbers can be different, no needed to be consistent

% Family Ages

keySet4 = {'Gogus' 'Yilmaz' 'Kaya'};

gogusFamily = [52 50 16 23 25];
yilmazFamily = [45 48 12 8 22 68 25];
kayaFamily = [40 38 10];

valueSet4 = {gogusFamily yilmazFamily kayaFamily};
map4 = containers.Map(keySet4, valueSet4);

value4 = map4('Gogus'); % The key is string, so call with it
disp(value4); % 52 50 16 23 25


%% Creating empty maps

newMap = containers.Map("KeyType", 'char', 'ValueType', 'double');

% Mapping values with keys

newMap('Gaziantep') = 27;
newMap('Ankara') = 6;
newMap('Istanbul') = 34;
newMap('Izmir') = 35;

% To see the keys of the map with the keys() function

newKeys = keys(newMap);
disp(newKeys);

% To see the values of the map with the values() function

newValues = values(newMap);
disp(newValues);

%% Searching values of keys

wanted = {'Gaziantep' 'Ankara'};

wantedValues = values(newMap, wanted);
disp(wantedValues);

% Calling from wanted values

wantedValue = wantedValues{1};
disp(wantedValue);

%% Removing keys and values with the remove() function
% If a key is removed, the value of it is also gone

disp(keys(newMap)); % Before removing it
disp(values(newMap)); % Before removing it

remove(newMap, 'Izmir');

disp(keys(newMap)); % Izmir is gone with its value
disp(values(newMap)); % Izmir is gone with its value


%% Adding keys and values with the "yourMapName"() function

disp(keys(newMap)); % Before adding it
disp(values(newMap)); % Before adding it

newMap('Kayseri') = 38;

disp(keys(newMap)); % Kayseri is added with its value
disp(values(newMap)); 


%% iskey() function is used to see if something is a key in a map

Q1 = isKey(newMap, 'Gaziantep'); % 1
Q2 = isKey(newMap, 'Izmir'); % 0

disp([Q1 Q2]);