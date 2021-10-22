function [wordLength,firstChar,lastChar] = ProbNine(word)
%This funtion gives an output of the number of charachters, the first
%letter, and the last letter of the word used in the input
%input a word with ' ' surrounding the word returns an output 
 
wordLength = strlength(word)
firstChar = word(1,1)
lastChar = word(1,wordLength)
 

end
