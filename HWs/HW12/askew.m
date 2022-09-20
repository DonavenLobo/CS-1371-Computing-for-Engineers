function [deg, minHeight] = askew(filename)
skewImg = imread(filename); % Reads the image file into a 3 dimensional array
minHeight = 120000; % Sets the min Height to a very large number
    for x = 1:179 % Iterates through all the degrees
        img = imrotate(skewImg,x); % rotates the image by x degrees
        height = findHeight(img); % finds the height of the image using the helper function
        if height < minHeight % Checks to see if the current height is the minimum
            minHeight = height; % height is set to the minimum height
            deg = x; % Degree is set to x
        end
    end
end

function [currHeight] = findHeight(img) % Helper function
[findredr,~] = find((img(:,:,1) == 255) & (img(:,:,2) == 0) &( img(:,:,3) == 0)); % finds all the red columns
currHeight = max(findredr) - min(findredr) + 1; % finds the length of the red bar
end

% firstCol = find(findredcol == min(findredc));
% findredr = 
% function out = checkLinearity(img)
% [findredrows,findredcols] = find((img(:,:,1) == 255) & (img(:,:,2) == 0) &( img(:,:,3) == 0));
% RedMask1 = find(findredcols == min(findredcols));
% RedMask2 = find(findredcols == min(findredcols)+2);
% row1 = findredrows(RedMask1);
% row2 = findredrows(RedMask2);
%     if RedMask1) == length(RedMask2)
%         out = true;
%     else
%         out = false;
%     end
% end
%& width > maxWidth %& checkFix == true
% [minHeight,maxWidth] = findHeight(skewImg);
% deg = 0;
%         checkFix = checkLinearity(img);
%             maxWidth = width;
% currWidth = max(findredc) - min(findredc) + 1;