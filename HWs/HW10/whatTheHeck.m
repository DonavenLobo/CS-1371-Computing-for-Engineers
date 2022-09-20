function whatTheHeck(filename)
check = fopen(filename,'r'); % Opens input file to read
file = strtok(filename,'.'); % finds the file name of the input file
outName = sprintf('%s_counts.txt',file); % creates the filename for the output file
out = fopen(outName,'w'); % creates the output file to write to
line = fgets(check);% gets the first line from the input file
arrayCount = {'',[]}; % creates and empty cell array with two columns
    while ischar(line) % Goes through line by line until eof double is found
        alphaMask = (line>='a' & line<='z') | (line>='A' & line<='Z') | line == ' '; % creates a mask that contains only letters and spaces
        line = line(alphaMask); % Applies mask to the current line
        line = lower(line); % makes the full line lowercase
        while ~isempty(line) % checks o see if the line is empty
            [word, line] = strtok(line); % splits line up word by word
            if any(strcmp([arrayCount(:,1)],word)) % checks if the word has been found before
                findWord = find(strcmp([arrayCount(:,1)],word)); % finds the row where it had been found
                arrayCount{findWord,2} = arrayCount{findWord,2} + 1; % adds to the count of that row
            else
                arrayCount = [arrayCount; {word},{1}]; % creates a row with a new word and its initial 1 count
            end   
        end
        line = fgets(check); % gets the next line from th input file
    end
arrayCount = arrayCount(2:end,:); % removes the initial row from the cell array for formatting
[row,col] = size(arrayCount); % finds the size of the cell array so that we know how many rows there are
    for a = 1:row
        fprintf(out, '%s %d\n',arrayCount{a,1},arrayCount{a,2});% prints output statements row by row into the output file
    end   
fclose(check); % closes input file
fclose(out);   %closes output file
end