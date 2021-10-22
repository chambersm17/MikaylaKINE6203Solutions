function [valueOne, valueTwo, valueThree, valueFour] = problemTwo(input1,input2)
%This function takes two numbers for inputs and returns values for the
%sum first follwed by the difference, product and max of the two numbers as
%outputs.

%When inseting values, insert them in numerical order to find the differnce
%of the smaller number from the greater number.


valueOne = input1 + input2
valueTwo = input1 - input2
valueThree = input1 * input2

if input1 > input2
valueFour = input2
end
if input2 > input1
    valueFour = input2
else
    vlaueFour = input1
end

