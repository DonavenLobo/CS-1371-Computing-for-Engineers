function [str] = complicated(song, directions)
scrambled = fopen(song,'r'); % Opens scrambled input file and gets permission to read
dir = fopen(directions, 'r'); % Opens directions file and gets permission to read
line1 = fgetl(scrambled); % Gets the first line in the scrambled file
str = ''; % initializes our output variable as an empty string
array = {}; % Creates an empty cell array for navigation purposes for the scrambled file
x = 1; % initializes value for the loop
    while ischar(line1) % excecutes until it reaches the eof double for the scrambled song file
        len = length(line1); % finds the length of the string
        for a = 1:len
            array{x,a} = line1(a); % creates a cell array with each cell containing a single charector from the scrambled file
        end
        x = x+1; % adds to get to the next row
        line1 = fgetl(scrambled); % gets the next line from scrambled file
    end
array = array'; % transposes array for formatting purposes
line2 = fgetl(dir); % gets the first line from the directions input file
currPosx = 1; % initializes current x position in the cell array
currPosy = 1; % initializes current y position in the cell array
str = [str, array{currPosx,currPosy}]; % Adds the first letter to our output variable
    while ischar(line2) % excecutes until eof double for the directions file has been found
        [move,dist] = strtok(line2); % finds the move we need to make and the distance we need to travel
        dist = str2num(dist(2:end)); % converts the string number into a double
        if strcmp('right',move) % checks to see if we are moving right
            for a = 1:dist
                currPosx = currPosx + 1; % Finds our new position
                str = [str, array{currPosx,currPosy}]; %Adds letter held in new position to output string
            end    
        elseif strcmp('left',move)% checks to see if we are moving left
            for a = 1:dist
                currPosx = currPosx - 1; % Finds our new position
                str = [str, array{currPosx,currPosy}]; %Adds letter held in new position to output string
            end      
        elseif strcmp('up',move)% checks to see if we are moving up
            for a = 1:dist
                currPosy = currPosy - 1; % Finds our new position
                str = [str, array{currPosx,currPosy}]; %Adds letter held in new position to output string
            end  
        else % otherwise we are moving down
            for a = 1:dist
                currPosy = currPosy + 1; % Finds our new position
                str = [str, array{currPosx,currPosy}]; %Adds letter held in new position to output string
            end  
        end
        line2 = fgetl(dir);% Gets the next line in the directions file
    end
fclose(scrambled); % closes scrambled file
fclose(dir); % closes directions file
end