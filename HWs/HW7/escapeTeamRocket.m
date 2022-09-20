function [out] = escapeTeamRocket(map, dir)
[rowLen,colLen] = size(map);% used to find the the row length of the map for when we are moving
currPos = find(map == 'o'); % Used to find the initial position
finalPos = find(map == 'X'); % Find the final position
safe = false; % initializing for the while loop
    if dir == 'u' % To find the initial direction
        movement = -1;
    elseif dir == 'd'
        movement = 1;
    elseif dir == 'l'
        movement = -rowLen;
    else
        movement = rowLen;
    end
    while safe == false % Loops until you reach the final position at which point safe = true
        if currPos == finalPos
            safe = true;
        else
            map(currPos) = '#'; % Used to show previous location
            currPos = currPos + movement; % Used to find the next position
            if map(currPos) == 'v' % Decides which direction you will travel next
                movement = 1;
            elseif map(currPos) == '^'
                movement = -1;
            elseif map(currPos) == '>'
                movement = rowLen;
            elseif map(currPos) == '<'
                movement = -rowLen;
            end
        end
    end
out = map; % Stores the final map in output
end