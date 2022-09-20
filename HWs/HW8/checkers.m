function [moves] = checkers(board)
moves = {}; % Create an empty cell array to add to during the loops
[brows,bcols] = find(ismember(board,'blue')); % create a mask that finds the position of all the 'blues' in the array
NoOfBlues = length(brows);% finds the number of blues on the board
    for a = 1:NoOfBlues % iterates through the number of times based on how many blue checkers there are
        initialPos = sprintf('checker at (%d, %d)',brows(a),bcols(a)); % creates the first halfof the sentence based on intial position
        if brows(a)-1 >= 1 & bcols(a)-1 >= 1 % Checks if the upper left move is a possible move
            pos1 = board{brows(a)-1,bcols(a)-1}; % Stores the value contained in the upper diagonal left position
            if strcmp(pos1, 'avail') % checks if the position is holding an avail
                finalPos = sprintf(' moves to (%d, %d)',brows(a)-1,bcols(a)-1) ;
                moves = [moves;{[initialPos,finalPos]}]; % prints according statement
            elseif strcmp(pos1, 'red') % checks if the position is holding a red
                if brows(a)-2 >= 1 & bcols(a)-2 >= 1 % checks if the posiiton is on the board
                    if strcmp(board{brows(a)-2,bcols(a)-2},'avail') % checks to see if this position is an avail
                       finalPos = sprintf(' jumps to (%d, %d)',brows(a)-2,bcols(a)-2);
                       moves = [moves;{[initialPos,finalPos]}]; % prints according statement
                    end
                end
            end
        end
        if brows(a)-1 >= 1 & bcols(a)+1 <=8
            pos2 = board{brows(a)-1,bcols(a)+1};
            if strcmp(pos2,'avail')
                finalPos = sprintf(' moves to (%d, %d)',brows(a)-1,bcols(a)+1); 
                moves = [moves;{[initialPos,finalPos]}];
            elseif strcmp(pos2, 'red')
                if brows(a)-2 >= 1 & bcols(a)+2 <= 8
                    if strcmp(board{brows(a)-2,bcols(a)+2},'avail') 
                       finalPos = sprintf(' jumps to (%d, %d)',brows(a)-2,bcols(a)+2);
                       moves = [moves;{[initialPos,finalPos]}];
                    end
                end
            end

        end     
    end
    moves = sort(moves); % sorts the final cell array in alphabetical order
end