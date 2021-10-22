function [totalMonies] = problemFour(numQ,numD,numN,numP)
%This function takes the number of quaters, dimes, nickels, pennies (in
%that specific order) and calculates the total value. Number must be
%entered in the sequence of quaters, dimes, nickels, pennies.


totalMonies = (numQ * .25) + (numD * .10) + (numN * .05) + (numP * .01)
end

