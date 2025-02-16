
matrix1 = [10 25 47;
           41 12 8;
           98 21 3]


matrix1(1, 2)
matrix1(1)
matrix1(5)
matrix1(5) + matrix1(1)

word = 'Fenerbahce'

word(1)
word(2)
word(3)
word(4)
word(5)
word(6)
word(7)
word(8)
word(9)
word(10)

word(1: end)

word2 = 'Sports Club'

words = word(1: end) + " " + word2(1: end)

% or convert them into strings

word = string(word);
word2 = " " + string(word2);

words = word + word2
