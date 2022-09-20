function [numCircles] = bacteriaCulture(imName, rVal, gVal, bVal)
img = imread(imName); % Reads image and stores it into a 3 dimensional array
red = img(:,:,1); % Stores red layer 
green = img(:,:,2); % Stores green layer
blue = img(:,:,3); % Stores blue layer
findBac = red == rVal & green == gVal & blue == bVal; % Creates a logical mask to find required color
[bacC,bacR] = find(findBac); % finds the index positions of the rows and columns
[minCol,idx] = min(bacC); % Finds the minimum column and its index
minRow = bacR(idx); % finds the minCols corresponding row
currColor = img(minCol,minRow,:); % finds current image color
diameter = 1; % initializes the diameter
    while currColor(1,1,1) == rVal & currColor(1,1,2) == gVal & currColor(1,1,3) == bVal % does the while loop until the color doesn't match
        minCol = minCol + 1; % adds 1 to the columns
        diameter = diameter + 1; % adds one to the diameter
        currColor = img(minCol,minRow,:); % gets the next image position
    end
diameter = diameter - 1; % formats the diameter 
radius = diameter./2; % finds the radius
oneBacArea = pi.*(radius^2); % finds the area of one circle
TotalPixArea = sum(sum(findBac)); % finds the total pixel area
numCircles = ceil(TotalPixArea./oneBacArea); % divides the total area by the area of one circle to finds the total number of circles
end

%find area of one circle in terms of pixels, finds total number of pixels
%and then divide by area to find total number of circles