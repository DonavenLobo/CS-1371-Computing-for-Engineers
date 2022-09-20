function breadStats(stats, onsale)
allBreadsCA = readcell(stats); % Reads the excel spread sheet from input variable and stores data into cell array
headers = allBreadsCA(1,:); % stores all the header names 
data = allBreadsCA(2:end,:); % stores the rest of the data
findBreadNames = find(strcmp(headers,'Bread')); % finds which column is the 'Bread' column
newData = {}; % Creates an empty cell array for the new data
    for a = 1:length(onsale) % depends on how many items are on sale
        findBreadsOnSale = find(strcmp(data(:,findBreadNames),onsale{a})); % finds the locations of the items on sale
        newData = [newData; data(findBreadsOnSale,:)]; % puts these items into the new cell array
    end
findCarbs = find(strcmp(headers,'Carbs'));% find which column the carbs are in
findProteins = find(strcmp(headers,'Proteins'));% find which column the proteins are in
findFats = find(strcmp(headers,'Fats'));% find which column the fats are in
CarbsCals = cell2mat([newData(:,findCarbs)]).*4; % calculates the calories from the carbs
ProteinsCals = cell2mat([newData(:,findProteins)]).*4;% calculates the calories from the proteins
FatsCals = cell2mat([newData(:,findFats)]).*9;% calculates the calories from the fats
Calories = CarbsCals + ProteinsCals + FatsCals; % calculates the total calories
newData = [newData,num2cell(Calories)]; % Adds the calories data points to the newData cell array
headers = [headers, {'Calories'}]; % adds the header 'Calories' to the headers cell array
findPrice = find(strcmp(headers,'Bread_Price'));% find which column the prices are in
Prices = cell2mat([newData(:,findPrice)]);% stores all the prices in the variable
PricePoints = 10 - [floor(Prices./2)]; % Calculates the points from prices
CarbsPoints = 10 - [floor(Calories./50)]; % Calculates the points from Calories
TotalPoints = PricePoints + CarbsPoints; % Calculates the total points
[~,inds] = sort(TotalPoints); % sorts the total points column in ascending order
newData = [newData, num2cell(TotalPoints)]; % Adds the total points column to the new data cell array
headers = [headers, 'Total_Points']; % Adds the total points header to the header cell array
newData = newData(inds,:); % sorts the data array based on the inds mask
newData = newData(end-2:end,:); % only stores the last three rows
[~,mask] = sort(headers); % mask for the sorting of the headers in alphabetical order
FcellOut = [headers;newData]; % mergers the headers and the data cell arrays
FcellOut = FcellOut(:,mask); % applies the mask to the overall cell array
writecell(FcellOut,[stats(1:end-5),'_calculated.xlsx']) % writes the output excel file with the output cell array
end