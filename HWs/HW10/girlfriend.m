function girlfriend(songLyrics)
lyrics = fopen(songLyrics, 'r'); %Opens the unordered lyrics file to read
line = fgets(lyrics); % Gets the first line from the file
filename = strtok(songLyrics,'.'); % finds the file name for the output file
outputfile = sprintf('%s_reordered.txt',filename); % creates an output filename
out = fopen(outputfile, 'w'); % creates an output file with permission to write
cellArray = {}; % Initializes an empty cellarray for holding items in the file
x = 1; % Initiallizes value for loop
    while ischar(line) % loops until eof double is found
        [number, sentence] = strtok(line); % splits the sentence into its line number and the actual sentence
        sentence = sentence(2:end); % Removes the extra space at the start of the sentence
        cellArray{x,1} = str2num(number); % converts the line number into a double and stores it in the first column of the cell array
        cellArray{x,2} = sentence; % Stores the corresponding sentence in the second line of the cell array
        line = fgets(lyrics); % Gets the next line in the file
        x = x+1; % Increments for the loop
    end
cellArray{end,2} = [cellArray{end,2},'\n']; % Adds a new line charactor to the last line in the file to avoid bad formatting
[~,ascendMask] = sort([cellArray{:,1}],'a'); % creates a mask based on line numbers in ascending order
cellArray = cellArray(ascendMask,:); %Applies the mask
[row, col] = size(cellArray); % finds the size of the array so we know how many rows there are
    for a = 1:row
        fprintf(out,cellArray{a,2}); % Loops through all the rows and prints them into the output file
    end
fclose(lyrics); % Closes the lyrics file
fclose(out); % Closes the output file
end