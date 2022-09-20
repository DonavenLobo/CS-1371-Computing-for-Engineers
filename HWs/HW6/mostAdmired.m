function [out] = mostAdmired(students, letters)
max = 0; % Predefines a value for the comparison in the If statement in the for loop
baseSen = 'Student %d has %d secret admirers!'; % Base sentence for formatting later
    for a = students % Iterates through the students Ids
        mask = letters == a; % logical mask finding the location of all the letters received
        Total = sum(mask); % finds the total number of letters received by a student
        if Total > max % Checks to see if the student has recieved the most leters
            max = Total; % Stores students no of letters received in mas 
            student = a; % stored the students ID
        end
    end
out = sprintf(baseSen,student,max); %Compiles the output statement
end