function [hw_f] = physicsHW(hw)
[row, col] = size(hw); % finds the size of the hw array
hw_f = [];% creates an empty array for the output 
    for a = 1:row % iterates through all the rows
        currrow = hw(a,:); % stores the current row in currrow
        if ischar(currrow{1}) % Check if we are solving for K
            Let = {'K'}; % Stores unknown letter
            val = {round((0.5 * currrow{2} * (currrow{3})^2),3)}; % formula based on what we are solving for


        elseif ischar(currrow{2}) % checks if we are solving for m
            Let = {'m'};% Stores unknown letter
            val = {round(((2*currrow{1})/currrow{3}^2),3)};% formula based on what we are solving for

        else % concludes that we are solving for v
            Let = {'v'};% Stores unknown letter
            val = {round((((2*currrow{1})/currrow{2})^(1/2)),3)};% formula based on what we are solving for

        end  
        row = [Let, val]; % creates the row
        hw_f = [hw_f; row]; % adds the row to the output array
    end
end









% end
% hw = hw';
% x = 1;
