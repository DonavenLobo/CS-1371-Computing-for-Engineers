function [statement] = socialDistancing(crowd)
mask = crowd == 'x'; % Logical mask of where all the x positions are
[rows,cols] = find(mask); % finds the rows and columns of where the x positions are
count = 0; % initializes count
    for a = 1:length(rows)
        currPosx = rows(a); % sets current x coordinate
        currPosy = cols(a); % sets current y coordinate
        remRows = rows; 
        remRows(a) = []; % removes itself from the remaining x values
        remCols = cols;
        remCols(a) = []; % removes itself from the remaining y values
        diffRows = remRows - currPosx; % finds the difference in the x values
        diffCols = remCols - currPosy; % finds the difference in the y values
        RowsSquared = diffRows .* diffRows; % finds the square of the rows
        ColsSquared = diffCols .* diffCols; % finds the square of the columns
        tot = RowsSquared + ColsSquared; % finds the total squared vaue
        if any(tot<9) % checks if total squared value < (3^2)
            count = count + 1; % if so add it to the count
        end
    end
    if count == 0
        statement = 'This crowd is following social distancing guidelines';% case if everyone is social distancing
    else
        statement = sprintf('%d person(s) are violating social distancing rules here',count); % case if people aren't social distancing
    end
end