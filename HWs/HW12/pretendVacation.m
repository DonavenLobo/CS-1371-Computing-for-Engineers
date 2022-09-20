function pretendVacation(you, bkgd)
[token,~] = strtok(bkgd,'.'); % Finds the background pictures file name
outputFilename = [token '_vacay.png']; % creates the output file name
youImg = imread(you); % reads the picture of you
bkgdImg = imread(bkgd); %reads the picture of the background
youImg = imresize(youImg,0.5); % resizes the picture of you by half
backReds = bkgdImg(:,:,1); % Stores the red layer of the background image in variable
backGreens = bkgdImg(:,:,2); % Stores the green layer of the background image in variable
backBlues = bkgdImg(:,:,3);% Stores the blue layer of the background image in variable
greenMask = backReds == 0 & backGreens == 255 & backBlues == 0;% creates a mask where only green is showing
megaMask = cat(3,greenMask,greenMask,greenMask); % puts all the masks together to form a 3 dimensional mask
bkgdImg(megaMask) = youImg; %Applies the mask to the image array
newImg = rgb2gray(bkgdImg); % Grayscales the image
newImg = cat(3,newImg,newImg,newImg);
imwrite(uint8(newImg),outputFilename); % writes the image to the output file
end
% height = max(rows)-min(rows)+1;
% width = max(cols)-min(cols)+1;
% backReds(greenMask) = youImg(:,:,1); % applies mask are replaces green cells with image of you (red)
% backGreens(greenMask) = youImg(:,:,2); % applies mask are replaces green cells with image of you (green)
% backBlues(greenMask) = youImg(:,:,3); % applies mask are replaces green cells with image of you (blue)
% ;
% [r1,c1,d1] = size(bkgdImg(greenX,greenY))
% [r1,c1,d1] = size(youImg)
% bkgdImg(greenMask) = youImg(1:length(greenMask));
% bkgdImg(greenX,greenY) = youImg(:,:,1)
% bkgdImg(greenX,greenY,1) = youImg(:,:,1);
% bkgdImg(greenX,greenY,2) = youImg(:,:,2);
% bkgdImg(greenX,greenY,3) = youImg(:,:,3);
% imshow(bkgdImg)


