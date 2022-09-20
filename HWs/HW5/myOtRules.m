function [sent] = myOtRules(team1, team2)
team1(team1 == ',') = []; % removes all the commas
team2(team2 == ',') = [];
team1 = strsplit(team1); % Stores each word in the string in a vector
team2 = strsplit(team2);
name1 = char(team1(1)); % Stores team1's name
name2 = char(team2(1)); % Store team2's name
team1 = team1(2:end); % Only stores scoring of the teams
team2 = team2(2:end);
mask = strcmp(team1,team2); % Creates a logical mask comparing the scoring strings
ind = find(~mask); %finds the indexes of all strings that are different from each other
    if isempty(ind) % If none were different
        sent = 'I guess the NFL was right all along...';
    else % if at least one is different
    ind = ind(1); % takes the first different index
        if strcmp(char(team1(ind)),'Touchdown') % finds out which team won, checks if team1 won
            sent = sprintf('%s Won!!!',name1);
        else % checks if team2 won
            sent = sprintf('%s Won!!!',name2);
        end
    end
end