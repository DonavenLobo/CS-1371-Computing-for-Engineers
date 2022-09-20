function crimeScene(photo)
img = imread(photo); % Reads in the photo
red = img(:,:,1); % extracts the red layer
green = img(:,:,2); % extracts the green layer
blue = img(:,:,3); % extracts the blue layer
Original = img(:,:,1); % extracts layer for imae manipulation
MaskLeft = img(:,:,1); % Gets layers for left shift
MaskLeft(:,1) = []; % Removes the first column
MaskLeft(:,end+1) = MaskLeft(:,end); % shifts the array to the left
leftEdges = MaskLeft - Original; % finds the difference between that and the original
MaskRight = img(:,:,1); % Gets layers for right shift
MaskRight(:,end) = [];% removes the last column
MaskRight(:,2:end+1) = MaskRight; % shifts the array to the right
rightEdges = MaskRight - Original; % finds the difference between that and the original
MaskUp = img(:,:,1); % Gets layers for up shift
MaskUp(1,:) = []; % removes the first row
MaskUp(end+1,:) = MaskUp(end,:); % shifts the whole array up
upEdges = MaskUp - Original;% finds the difference between that and the original
MaskDown = img(:,:,1); % Gets layers for down shift
MaskDown(end,:) = []; % removes the last row
MaskDown(2:end+1,:) = MaskDown; % shifts the whole array down
downEdges = MaskDown - Original;% finds the difference between that and the original
AllEdges = leftEdges + rightEdges + upEdges + downEdges; % adds all the edges together
EdgeMask = AllEdges == 255; % creates a mask for where the edges lie
red(EdgeMask) = 255; % applies the edge mask and changes the values to red
green(EdgeMask) = 0; % applies the edge mask and changes the values to red
blue(EdgeMask) = 0; % applies the edge mask and changes the values to red
ImagesEdged = cat(3,red,green,blue); % Puts all the layers back together to create final image
[token,~] = strtok(photo,'.'); % finds the file name required for the output
outputFilename = [token,'_edged.png']; % creates output file name
imwrite(uint8(ImagesEdged),outputFilename); % wrtie output image to output file
end



% function crimeScene(photo)
% img = imread(photo); % Reads the image and stores it into a 3 dimensional array
% % [r1,c1,d]= size(img)
% red = img(:,:,1); % extracts red layer from image array
% green = img(:,:,2); % extracts green layer from image array
% blue = img(:,:,3); % extracts blue layer from image array
% GreenMask = red == 0 & green == 255 & blue ==0; % Creates a mask for all the green values
% imgUp = imtranslate(img,[0,1]); % translates the image up by 1
% % [r2,c2,d] = size(imgUp)
% overlap1 = findOverlap(imgUp,GreenMask); % finds the overlapping seciton between green and white using helper function
% imgDown = imtranslate(img,[0,-1]); % translates the image down by 1
% overlap2 = findOverlap(imgDown,GreenMask);% finds the overlapping seciton between green and white using helper function
% imgRight = imtranslate(img,[1,0]); % translates the image right by 1
% overlap3 = findOverlap(imgRight,GreenMask);% finds the overlapping seciton between green and white using helper function
% imgLeft = imtranslate(img,[-1,0]); % translates the image left by one
% overlap4 = findOverlap(imgLeft,GreenMask);% finds the overlapping seciton between green and white using helper function
% TotalOverlap = overlap1 | overlap2 |overlap3 | overlap4; % finds the total overlap 
% red(TotalOverlap) = 255; % sets the total overlap to pure red
% green(TotalOverlap) = 0; % sets the total overlap to pure red
% blue(TotalOverlap) = 0; % sets the total overlap to pure red
% newImg = cat(3,red,green,blue); % puts all the layers back together to form the new mask
% % imshow(newImg)
% [token,~] = strtok(photo,'.'); % finds the file name required for the output
% outputFilename = [token,'_edged.png']; % creates output file name
% imwrite(uint8(newImg),outputFilename); % wrtie output image to output file
% end

% function overlap = findOverlap(img,GreenMask) % Helper function
% red = img(:,:,1); % extracts red layer from translated image
% green = img(:,:,2); % extracts green layer from translated image
% blue = img(:,:,3); % extracts blue layer from translated image
% WhiteMask = red == 255 & green == 255 & blue == 255; % creates a mask containing all the positions of the white pixels
% overlap = WhiteMask == GreenMask; % finds the overlap
% end


%imtranslate()

% Mask1 = GreenMask == (WhiteMask - 1);
% Mask2 = GreenMask == (WhiteMask + 1);
% Mask3 = GreenMask == (WhiteMask - rows);
% Mask4 = GreenMask == (WhiteMask + rows);
% TotalMask = Mask1 | Mask2 | Mask3 | Mask4;
% red(TotalMask) = 255;
% green(TotalMask) = 0;
% blue(TotalMask) = 0;
% newImg = cat(3,red,green,blue);

% megaMask = cat(3,TotalOverlap,TotalOverlap,TotalOverlap);
% img(megaMask) = 

%WhiteMask = red == 255 & green == 255 & blue == 255;

%[rows,~,~] = size(img);
