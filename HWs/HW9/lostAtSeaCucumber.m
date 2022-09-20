function [searched] = lostAtSeaCucumber(seaCucumberCrowd, searchingFor)
x = 1; % Initializes value for while loop iteration
found = false; % Initializes condition for while loop
searched = ''; % Initializes output variable as empty for when added to in the while loop
indicies = [];
while found == false % Continues until person you are searching for is found
    if isequal(seaCucumberCrowd(x).Name,searchingFor) % checks if the name at the position in the structure we are at right now is the name as the person we are looking for
        found = true; % if so turns the condition to true to stop the loop
        searched = [searched, seaCucumberCrowd(x).Name, ' ']; % adds the name to the output variable to show path
    elseif contains(searched, seaCucumberCrowd(x).Name) & any(indicies == seaCucumberCrowd(x).Next) % Checks to prevent infinite loop
        found = true;
        searched = [searched, seaCucumberCrowd(x).Name, ' '];        
    else
        searched = [searched, seaCucumberCrowd(x).Name, ' ']; % adds current name to the output variable to show the path taken
        indicies = [indicies, seaCucumberCrowd(x).Next ]; % to see index path to prevent infinite looping
        x = seaCucumberCrowd(x).Next; %Stores the index of the person who you have to go to next
    end
end