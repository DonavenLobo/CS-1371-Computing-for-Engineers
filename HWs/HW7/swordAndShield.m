function [pokemans] = swordAndShield(original, evColumn, threshold)
% [orgRowLen,orgColLen] = size(original);
[out,IDindexes] = sort(original(:,1),'descend'); % Finds the indexes of the IDs arranged in descending order
descIdArr = original(IDindexes,:); % Sorts the array in ID descending order
mask = find(descIdArr(:,evColumn)<threshold); % finds the location of the pokemons that should be deleted due to cut off
descIdArr(mask,:) = []; % Removes the pokemons from the array
%     for a = mask
%         descIdArr(a,:) = []
%     end
[out,indexes] = sort(descIdArr(:,evColumn),'descend'); % finds the index order of the descending order of the attribute specified
pokemans = descIdArr(indexes,:); % Sorts the array and stores it in the output variable 
end