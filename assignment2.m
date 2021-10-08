%% Mikayla Chambers
% September 30, 2021
% This code allows you to play a game of tic-tac-toe 
%
% To play you will need to insert a number between 1-3 that coordidnates
% with your row frist and then your column. You are not allowed to make a
% move in sapce that is already occupied by yourself or the computer. To
% win you must have 3 moves that connect eitheir vertically, horiontal, or
% diaganol. The game will continue until a player is determined a winner by
% having 3 consecutive spots occupied or until all 9 spots are filled. 


% welcome message and a prompt asking the user if they would like to play a game.
promptMessage = sprintf('Would you like to play tic tac toe?');
titleBarCaption = 'Yes or No';
button = questdlg(promptMessage, titleBarCaption, 'Yes', 'No');

   

%% board game 
if strcmpi(button, 'Yes')

    figure
    plot([.5 3.5],[-1.5 -1.5],'linewidth',2);
    %removes tics
    axis off
    hold on
    plot([.5 3.5],[-2.5 -2.5],'linewidth',2)
    plot([1.5 1.5],[-.5 -3.5],'linewidth',2)
    plot([2.5 2.5],[-.5 -3.5],'linewidth',2)
    hold off

end
 
 
% arrary baord game (keeps track)
gameBoard = zeros(3,3);

% loop to keep accepting turns from player/comp untill a winner 
clear endGame
remainMoves = 0;

while ~exist('endGame', 'var')
   
%%%%% Player move %%%%
% disp 'Please enter your row, then column '
% disp 'when prompted, enter an integer between 1-3'


prompt = {'Enter your Row:','Enter your Column:'};
dlgtitle = 'Player - choose a row and then column:';
dims = [1 75];
player1Move = inputdlg(prompt, dlgtitle, dims);
playerRow = str2double(player1Move{1});
playerRow1 = -1 * playerRow;
playerCol = str2double(player1Move{2});

if gameBoard(playerRow,playerCol) == 1 || gameBoard(playerRow,playerCol) == -1
    msgbox('You can not make a move in an occupied space. Try again.')
    player1Move = inputdlg(prompt, dlgtitle, dims);
    playerRow = str2double(player1Move{1});
    playerRow1 = -1 * playerRow;
    playerCol = str2double(player1Move{2});

end

text(playerCol,playerRow1,'X','horizontalalignment','center','fontsize',80)
gameBoard(playerRow,playerCol) = 1;

% Check to see if player meets winning requirements
if  sum(diag(gameBoard)) == 3 ...
    || sum(diag(flipud(gameBoard))) == 3 ...
    || sum(gameBoard(1,1:3)) == 3 ...
    || sum(gameBoard(2,1:3)) == 3 ...
    || sum(gameBoard(3,1:3)) == 3 ...
    || sum(gameBoard(1:3,1)) == 3 ...
    || sum(gameBoard(1:3,2)) == 3 ...
    || sum(gameBoard(1:3,3)) == 3
    disp('Winner Winner Chicken Dinner')
    gameOver = 1;
    break
   
end

remainMoves = remainMoves +  1;

% Computer turn, review of plays

clear doAgain
while ~exist('doAgain','var')
    compRow = randi(3,1);
    compRow1 = -1 * compRow;
    compCol = randi(3,1);
   
    if gameBoard(compRow,compCol) ~= 1 && gameBoard(compRow,compCol) ~= -1
        text(compCol,compRow1,'O','horizontalalignment','center','fontsize',80)
        gameBoard(compRow,compCol) = -1;
        doAgain = 0;

    end

end

remainMoves = remainMoves + 1;

% Check to see if computer won
if sum(diag(gameBoard)) == -3 ...
    || sum(diag(flipud(gameBoard))) == -3 ...
    || sum(gameBoard(1,1:3)) == -3 ...
    || sum(gameBoard(2,1:3)) == -3 ...
    || sum(gameBoard(3,1:3)) == -3 ...
    || sum(gameBoard(1:3,1)) == -3 ...
    || sum(gameBoard(1:3,2)) == -3 ...
    || sum(gameBoard(1:3,3)) == -3
    disp('you lose')
    gameOver = 1;
    break
   
end

%% Check for draw/no more possible moves
if remainMoves > 8
    disp('draw')
    gameOver = 1;
    break

end
   
end