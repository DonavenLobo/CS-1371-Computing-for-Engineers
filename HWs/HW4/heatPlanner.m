function [heat_desc] = heatPlanner(numAthletes)
divs = (1:1:(numAthletes-1)); %Vector containing all possible integers from 1 to numAthletes excluding the value of numAthletes
mods = mod(numAthletes,divs); %Modulus division between numAthletes and all nums upto numAthlees
wholeDivs = divs(mods==0); %This gives us all the values of the devisors of numAthletes
Heats = wholeDivs(end); %Stores largest devisor in Heats
Athletes = numAthletes/Heats;%FInds number of athletes per heat by dividing total number of athletes by number of heats
heat_desc = ['There will be ',num2str(Heats),' heat(s), each with ',num2str(Athletes),' athletes!']; %Puts the output sentence together
end