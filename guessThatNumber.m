function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Mikayla Chambers
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced    
    %% BUG 3, when the script was ran an error message indicated incorrect use of '||' and was changed to '&&' because '||' represents 'or' instead of 'and' which is needed for this line of code to display a message for each level with the same criteria  
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner        
    %% BUG 1, error message read "incorrect use of '=' operator. An addtional '='was added becuase an single '=' indicates a value is assinged and double ('==') compare to variables to see if they match 

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;   
    %% BUG 2, error message read "unrecognized function or variable 'advancedhighest', grammatical error was corrected to correct a created variable name

end

% randomly select secret number between 1 and highest for level of play


secretNumber = randi(highest);
%% BUG 7, the range of possible numbers wasn't orrectly showing 
%%removed "floor(rand() + 1 * highest)" to allow the secret number to be between 1 and the highest number of the selected level    


% initialize number of guesses and User_guess

numOfTries = 0; %% BUG 9, number of tries was adding an addtional attempt to total count of tries. Changed 1 to 0 to start the count at 0 to accurately represent number of attempts.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
    %% BUG 4, reading over the code I noticed the statment "userGuess >= highest", using the '=' would cause the code to exclude the highest value which is a possible number. To correct the code the '=' was removed 
    

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %%BUG 8, "while userGuess < 1 || userGuess > highest", reversed the sign to match intended function.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);
%% BUG 6, added 'numOfTries' becuase the number of tries were not being displayed in command window 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end % end of game
%% BUG 5, an error message displayed that and "END" was missing for the while loop
%% an 'end' was added to close the loop 