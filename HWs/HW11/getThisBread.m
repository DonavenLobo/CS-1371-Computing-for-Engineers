function [total] = getThisBread(grocery, inventory)
totalCost = 0; % Initializes the total cost of all the groceries
list = fopen(grocery,'r'); % Opens the grocery text file
Inventory = readcell(inventory); % Reads the excel spreadsheet and stores it into a cell array
line = fgetl(list); % gets the first line from the text file
AllItems = [Inventory(:,2)]; % gets the names of all the items in the excel sheet
    while ischar(line) % Continues until eof character is found
        [item,price] = strtok(line,','); % splirs the line with the comma being the delimeter
        price = str2num(price(2:end)); % removes the comma from the front of the string and converts the string to a double
        mask = find(strcmpi(AllItems,item)); % finds the location of the item you are looking for in the cell array
        totalCost = totalCost + (Inventory{mask,3})*price; % Finds the price of the item, multiplies it by the number you want to buy and adds it to the running total
        line = fgetl(list); % Gets the next line from the text file
    end
fclose(list); % Closes the text file
totalCost = round(totalCost,2); % Rounds the total to 2 decimal places
total = sprintf('My total will be $%.2f.',totalCost); % Creates output statement and stores into the output variable
end