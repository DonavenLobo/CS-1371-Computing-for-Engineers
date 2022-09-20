function [files] = breadDeadRedemption(start)
MyCurrDir = dir(); % Opens current directory of this file
FileNames = {MyCurrDir.name}; % Stores all the filenames into a cell array
files = {}; % Initializes a cell array for the output variable
len = length(start); % Finds the length of the start word
    for a = 1:length(FileNames) % Iterates through all the file names
        if any(strfind(FileNames{a},start)) % Checks to see if the partial start of the file name is contained in the file name
            if strcmp(FileNames{a}(1:len),start) % checks to see if it is at the start of the file
                files = [files; FileNames{a}]; % Writes the file name into the output cell array
            end
        end
    end
    if isempty(files) % Condition if the output cell array is empty
        files = {'No Files Found'}; % Output statement if this is the case
    end
end