function puzzled(filename, pos)
img = imread(filename);
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
[rows,cols,~] = size(img);
numPieces = length(pos);
output = zeros(rows,cols,3);
increment = cols./numPieces;
for i = 1:numPieces
    swap = pos(i);
    output(:,((i-1)*increment)+1:i*increment,1) = r(:,((swap-1)*increment)+1:((swap)*increment));
    output(:,((i-1)*increment)+1:i*increment,2) = g(:,((swap-1)*increment)+1:((swap)*increment));
    output(:,((i-1)*increment)+1:i*increment,3) = b(:,((swap-1)*increment)+1:((swap)*increment));    
end
[token,~]= strtok(filename,'.');
outputFileName = [token,'_solved.png'];
imwrite(uint8(output),outputFileName);
end