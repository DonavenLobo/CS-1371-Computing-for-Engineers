function [val] = badBreakup(list)
maxPrice = 0; % Initialize value for if statement in while loop
commas = find(list == ','); % finds all the commas in the string
repLocation = commas(2:2:end); % finds the location of every second comma in the strings
list(repLocation) = '!'; % replaces every second comma with an explamation mark
    while ~isempty(list) % runs until the string is empty
        [itemVal,list] = strtok(list, '!'); % splits the string at the exclamation point, seperating a given item and its price
        list = list(2:end); % removes the exclamation mark
        [item, value] = strtok(itemVal, ','); % seperates the item and its value
        value = str2num(value(2:end)); % converts the str value to a double so we can do a mathematical comparison
        if value > maxPrice % Only excecutes if the value of the current item is the first item or the greatest so far
            maxPrice = value;% Stores this new value as the new maxPrice
            val = item; % stores the item name that had the max price
        end
    end
end