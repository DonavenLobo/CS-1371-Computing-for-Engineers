function [players] = animalOverload(animalArr)
luckynums = []; % Creates an empt array
z = 1; % initializing for the loop
animalArr = animalArr([animalArr{:,3}],:); % applies the third column as a mask for the whole cell array
luckcol = animalArr(:,4)'; % Stores all the lucky numbers in a vector
    for a = luckcol % iterates through the lucky numbers
        a = a{1}; % removes number from cell
        numstr = num2str(a); % changes it from num to string
        for b = 1:length(numstr) % iterates through every position checking if it contains a 6
            if numstr(b) == '6'
                lucky = [];
                break
            else
                lucky = z;
            end
        end
        luckynums = [luckynums;lucky]; % adds to creating he mask
        z = z+1; % iterates forward
    end
animalArr = animalArr(luckynums,:); % applies the mask back to the array
brains = [animalArr{:,5}];% stores the brain stat column
brainMask = find(brains>=6.2 & brains<=9.7);% finds the indecies of all the rows that meet the criteria
animalArr = animalArr(brainMask,:); % applies the brain mask back to the array
[~,maskPoints] = sort([animalArr{:,2}],'descend'); % sort mask for the array based on decending previous high score
animalArr = animalArr(maskPoints,:); % mask applied
[row,col] = size(animalArr); % finds the size of the new animal array
    if mod((row+1),2)== 1 % checks to see if there are an odd total number of players
        animalArr(end,:) = []; % removes the last row
        row = row - 1;
    end
wins = floor(row/2);% fewer winners
loses = ceil(row/2);% more losers
    for c = 1:wins 
        animalArr{c,6} = 'My Team!'; % Adds to create the 6th column
    end
    for d = loses:row
        animalArr{d,6} = 'Loser';% Adds to create the 6th column
    end
players = animalArr;% places the final array into the output variable
end


% numOfWinners = 1:(col-1)/2;
% offset = (col-1)/2;
% for c = numOfWinners
%     animalArr{c,6} = 'My Team!';
%     animalArr{c+offset,6} = 'Loser';    
% end
% animalArr{end,6} = 'Loser';
% players = animalArr;