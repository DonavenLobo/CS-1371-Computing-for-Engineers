function [word] = scrabbleBoxes(b)
x = 1; % Initiallizing the for loop for numeric itteration
word = ''; % Setting up empty char vector the loop
% depths = zeros(1,length(b));
    for i = b % Iterates through each cell in the cell array
        while iscell(i) % countinues until the letter is unpacked from the cell
            i = i{1}; % Strips a layer out of the augmented cells
%             depths(x) = depths(x) + 1;
        end
        word(x) = i; % Concatonates the word
        x = x+1;    % Iterates
    end
end