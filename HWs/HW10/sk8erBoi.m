function sk8erBoi(love, rej)
boy = fopen(love,'r'); % Opens love letter file wih read permission
girl = fopen(rej,'r'); % Opens rejection letter file with read permission
filename1 = strtok(love,'.'); % finds the file name without the .txt
filename2 = strtok(rej,'.'); % finds the file name without the .txt
outputname = sprintf('%s&%s.txt',filename1,filename2); %Creates the output file name
out = fopen(outputname,'w'); % Opens a new document for the output file
attempt = fgetl(boy); % Gets the first line of the love letter without the new line charactor
stoppage = fgetl(girl); % gets the first line of the rejection letter without the new line charactor
    while ischar(attempt) % Runs until eof double is reached
        fprintf(out,'%s\n%s\n',attempt,stoppage); % Prints the two lines to the output file
        attempt = fgetl(boy); % Gets the next line in the love letter
        stoppage = fgetl(girl); % Gets the next line in the rejection letter
    end
fclose(boy); % Closes the love letter file
fclose(girl); % Closes the rejection letter file
fclose(out); % Closes the output file
end