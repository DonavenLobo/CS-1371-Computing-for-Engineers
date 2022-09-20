function [fixedData] = badRobot(data)
table = readcell(data); % Gets the table from the excel file
xvals = cell2mat(table(2:end,1)); % Stores and converts x data points from cell to num
yvals = table(2:end,2); % stores the y col data 
findCor = strcmp(yvals,'Error'); % finds the logical array of where the 'Error's are
yvalsOK = cell2mat(yvals(~findCor)); % Converts the okay yvals from cell2mat and stores them in variable
xvalsOK = xvals(~findCor); % stores the corresponding xvalues
xvalsFind = xvals(findCor); % stores the xvalues for which we need to find the interpolated y-value
interVals = interp1(xvalsOK,yvalsOK,xvalsFind); % finds the interpolated y-values
findCor = find(findCor); % finds the index positions of where we need to implement the interpolated y values
    for i = 1:length(interVals) % iterates through 
        yvals{findCor(i)} = round(interVals(i),2);   % corrects the data
    end
% yvals{findCor} = interVals;
table(2:end,2) = yvals; % fixes the original table
fixedData = table; % assigns table to the output variable
end