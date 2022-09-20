function [height, width] = imageScale(microscope)
img = imread(microscope); % Reads the image file and stores it into a 3-dim array
redScale = findScale(img); % Uses helper function below to find the scale of pixels to micrometers
[pixH,pixW] = findDim(img); % Uses helper function to find the dimensions of the image 
height = round(pixH/redScale,2); % Converts the height to micrometers and rounds it to 2 decimal places
width = round(pixW/redScale,2); % Converts the width to micrometers and rounds it to 2 decimal places

end

function redScale = findScale(img) % Helper function
[~,findredcols] = find((img(:,:,1) == 255) & (img(:,:,2) == 0) &( img(:,:,3) == 0)); % finds all the red columns
redScale = max(findredcols) - min(findredcols) + 1; % finds the length of the red bar
end

function [h, w] = findDim(img) % Helper function
[findblackrows,findblackcols] = find((img(:,:,1) == 0) & (img(:,:,2) == 0) &( img(:,:,3) == 0)); % finds all the rows and columns that contain black
h = max(findblackrows) - min(findblackrows) + 1; % finds the height of the image in pixels
w = max(findblackcols) - min(findblackcols) + 1; % finds the width of the image in pixels
end

% Bad Code
% RedMask1 = find(findredcols == min(findredcols));
% redScale = length(RedMask1)
% RedVecLen = findredrows(RedMask1)
% RedLen = max(RedVecLen) - min(RedVecLen) + 1

