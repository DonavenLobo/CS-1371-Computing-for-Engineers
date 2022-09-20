function sliceAndDice(key)
fileName = findName(key); % Uses helper function to find the file name
fileName = fileName{1}; % removes the file name from the cell array
TextFile = fopen(fileName,'r'); % opens the text file to read
line = fgetl(TextFile); % gets the first line from the text file
ca = {};% Initiallizes an empty cell array for the output cell array
    while ischar(line) % continues until eof file double is reacher
        words = {}; % creates an empty cell array for the words on this row
        while ~isempty(line) % continues until there is nothing stored in line
            [word,line] = strtok(line,line(end)); % seperates line by last charector in line
            words = [words,{word}]; % Adds word in a cell to the words cell array
        end
        ca = [ca; words]; % adds the words cell array to the main output cell array
        line = fgetl(TextFile); % gets the next line in the text file
    end
ca = ca(:,1:end-1); % removes last column from cell array for formatting purposes   
writecell(ca,[fileName(1:end-4),'.xlsx']) % writes the cell array to an excel file with the same name as the txt file
fclose(TextFile); % closes the text file
end

function [files] = findName(start) % Helper function to find the file name
MyCurrDir = dir(); % Opens current directory of this file
FileNames = {MyCurrDir.name}; % Stores all the filenames into a cell array
files = {}; % Initializes a cell array for the output variable
len = length(start); % Finds the length of the start word
    for a = 1:length(FileNames) % Iterates through all the file names
        if any(strfind(FileNames{a},start)) % Checks to see if the partial start of the file name is contained in the file name
            files = [files; FileNames{a}]; % Writes the file name into the output cell array 
        end
    end
    if isempty(files) % Condition if the output cell array is empty
        files = {'No Files Found'}; % Output statement if this is the case
    end
end
