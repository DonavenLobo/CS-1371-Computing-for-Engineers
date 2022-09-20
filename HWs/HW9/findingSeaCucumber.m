function [dist, depth] = findingSeaCucumber(sea)
dist = 1; % Initializes the intitial search distance
depth = 1; % Initializes the initial depth
found = false; % Initializes logic statement for while loop
    while found == false % Continues until it find the correct criteria
        if ischar(sea(dist).nextFathom) %Checks to see if the next level in the structure is a charector
            if strcmp(sea(dist).nextFathom,'SeaCucumber') % Checks to see if the string is the sea cucumber we are looking for
                found = true; % Changes our logic statement to true to terminate the loop
            else % Case if the string is 'Bottom'
                depth = 1; % Reinitiallizes depth to get back to the top
                dist = dist + 1; % Increases our distance by one so that we can explore further depths
            end
        else % Case if the next level in the structure is another structure
            depth = depth + 1; % adds 1 to the depth to add to the tally
            sea(dist).nextFathom = sea(dist).nextFathom.nextFathom; % removes one level of the nested structure
        end
    end

end