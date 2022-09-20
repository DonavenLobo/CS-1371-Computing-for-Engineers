function [updatedMap] = pokeMigration(oldMap)
[rowLen,colLen] = size(oldMap); % Stores the dimensions of the old map
updatedMap = zeros(rowLen-2,colLen-2); % Initializes a zero vector of the updated map
[newRowLen,newColLen] = size(updatedMap); % Stores the dimensions of the new maps
    for x = 1:newRowLen % Iterates through columns of the new map
        for y = 1:newColLen % Iterates through rows of the new maps
            region = oldMap(x:x+2,y:y+2); % finds the region that you need to find the average for
            Total = sum(sum(region)); % finds the total
            updatedMap(x,y) = round((Total./9),2); % Finds average and rounds value to 2 decimal places.
        end
    end
end