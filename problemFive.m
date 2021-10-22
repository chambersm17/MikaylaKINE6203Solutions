function [realTriangle] = problemFive(triArray)
%This function determines if a triangle is possible use a 3 number arrary
% adding the two smaller number to determine if they are larger than the
% largest number. If the number is less than the largest number, true will
% be dispalyed. If the sum of the two lower numbers is greater than the largest number, false will
% be dispalyed indicating a triangle is not possible with that combination
% of numbers. 
 
triArray = sort(triArray)
smallNumber = triArray(1,1)
midNumber = triArray(1,2)
highestNumber = triArray(1,3)
if smallNumber + midNumber > highestNumber
    realTriangle = true
else
    realTriangle = false
end
disp (realTriangle)
end
