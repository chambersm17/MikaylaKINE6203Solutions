function [result] = problem3(inputNum1,inputNum2)
%This functions takes the sum of two number values and returns the phrase
%'woo' to represent a sum that is even, and 'hah' for a sum that is an odd
%number. 


sumValue = inputNum1 + inputNum2
if rem(sumValue, 2) == 1
    result = 'Woo'
else
    result = 'Hah'

end

