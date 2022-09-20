function [mistaken, positions] = eventList(events, belongs)
positions = find(belongs == true); % contains the locations where the true events are
EventsSplit = strsplit(events); %Split the string into a vector
wrongE = belongs == false; %Logical mask for false events
Vec = EventsSplit(wrongE); %All false events stored in Vec
mistaken = [char(join(Vec)),' ']; %Joins the vector elements and converts them into char data type, also adds a space at the end
% wrongs = find(belongs == false);
% mistaken = events(6*(wrongs)-5:6*(wrongs));
end