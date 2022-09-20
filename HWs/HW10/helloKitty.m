function helloKitty(file, ca)
beepbop = fopen(file,'r'); % Opens corrupted input file to read
filename = strtok(file,'.'); % finds the file name of the input file
outputfile = sprintf('%s_fixed.txt',filename); % creates output file name
out = fopen(outputfile,'w'); % creates an output file to write to
line = fgets(beepbop); % gets the first line of input file
x = 1; % initializes value for the loop
    while ischar(line) % excecutes until eof double has been found
        newline = ''; % creates an empty string to hold corrected sentence
        while ~isempty(line) % runs whilst the line is not empty
            [word, line] = strtok(line); % splits sentence up word by word
            if strcmp(word,'BEEP') % checks if the current word is corrupted
                word = ca{x}; % replaces corrupted word with correspondng value in the cell array
                x = x+1; % incremets the value for the loop
            end
            newline = [newline, word, ' ']; % adds the new word to the corrected line  
        end
        while strcmp(newline(end),' ') 
            newline = newline(1:end-1); % rempves all the extra spaces from the end of the sentence
        end
        fprintf(out,'%s\n',newline); % prints the sentence to the output file and adds a new line
        line = fgets(beepbop); % gets the next line in the corrupted file
    end
fclose(beepbop); % closes the input file
fclose(out); % closes the output file
end