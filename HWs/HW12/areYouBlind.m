function areYouBlind(puppy, cmat)
img = imread(puppy); % Reads the image file and creates an image array
img = double(img); % Casts the array to double
[rows,cols,dim] = size(img); % finds the size of the array
newImg = zeros(rows-2,cols-2,dim); % Creates an empty image array for the output image
newImg(:,:,1) = getConv(img(:,:,1),cmat); % Uses the helper function to apply the convoluted matrix for the reds
newImg(:,:,2) = getConv(img(:,:,2),cmat); % Uses the helper function to apply the convoluted matrix for the greens
newImg(:,:,3) = getConv(img(:,:,3),cmat); % Uses the helper function to apply the convoluted matrix for the blues
newImg = uint8(newImg); % Converts the image back into uint8 data type
outputFilename = ['new_',puppy]; % Creates the output filename
imwrite(newImg,outputFilename); % Writes the output image to the output file
end

function [convolutedMatrix] = getConv(imageMatrix,convolution) % helper function
[rowLen,colLen] = size(imageMatrix); % Stores the dimensions of the old map
convolutedMatrix = zeros(rowLen-2,colLen-2); % Initializes a zero vector of the matrix
[newRowLen,newColLen] = size(convolutedMatrix); % Stores the dimensions of the new matrix
    for x = 1:newRowLen % Iterates through columns
        for y = 1:newColLen % Iterates through rows
            region = imageMatrix(x:x+2,y:y+2); % finds the 3x3 region
            region = region.*convolution;
            Total = sum(sum(region)); % finds the total
            convolutedMatrix(x,y) = Total; % Adds total to output matrix
        end
    end
end