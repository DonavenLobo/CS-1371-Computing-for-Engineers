% % Q1
% img = imread(filename)
% img(:,end/2+1:end,:)=img(:,1:end/2,:)
% img = imrotate(img,-90);
% [rows,cols,dim] = size(img)
% img = imresize(img,[2*rows,cols])
% [InputName,~] = strtok(filename,'.')
% outputName = [InputName,'_grande.jpg']
% imwrite(img,outputName)

%%Q2

% function yeOldChungi(numRows)
% OpenDirect = dir()
% fileNames = [OpenDirect.names]
% ChungFiles = contains(fileNames,'chungus')
% ChungFiles = sort(ChungFiles)
% img1 = imread(ChungFiles{1})
% img2 = imread(ChungFiles{2})
% img3 = imread(ChungFiles{3})
% [~,c1,~] = size(img1)
% [~,c2,~] = size(img2)
% [~,c3,~] = size(img3)
% img1 = imresize(img1, [numRows,c1])
% img2 = imresize(img2, [numRows,c2])
% img3 = imresize(img3, [numRows,c3])
% NewImg = [img1,img2,img3]
% NewImg = rgb2gray(NewImg)
% NewImg = cat(3,NewImg,NewImg,NewImg)
% imwrite(uint8(NewImg),'gottem.png')
% end

%Q3

% [rows,cols,~] = size(imgBuzz)
% imgNYresized = imresize(imgNY,[rows,cols])
% greenScreen = imgBuzz(:,:,1) == 0 & imgBuzz(:,:,2) == 255 & imgBuzz(:,:,3) == 0
% imgBuzz(GreenScreen) = imgNYresized(GreenScreen)
% imgOut = imrotate(imgBuzz,30)

%Q4

% function sortMyPokedex(filename)
% [token,~] = strtok(filename)
% outputFilename = [token,'_sorted.xlsx']
% arr = readcell(filename)
% headers = arr(1,:)
% data = arr(2:end,:)
% [~,sortMask] = sort(headers) % Attack,HP,Level,Name,Speed,Type
% headers = headers(sortMask)
% data = data(:,sortMask)
% [~,attackMask] = sort([cell2mat(data(:,1))],'d')
% data = data(attackMask,:)
% headers = [headers,{'Team?'}]
% [rows,cols] = size(data)
% for i = 1:rows
%     if data{i,3} > 15
%         data{i,cols+1} = 'Yes'
%     else
%         data{i,cols+1} = 'No'
%     end
% end
% finalArr = [headers;data]
% writecell(finalArr,outputFilename)
% end

%Q5

% function hauntedHouse(filename)
% [token,~] = strtok(filename)
% outputFilename = [token,'_friend.xlsx']
% arr = readcell(filename)
% headers = arr(1,:)
% data = arr(2:end,:)
% [~,NameSort] = sort(data(:,1))
% data = data(NameSort,:)
% headers = [headers,{Crazy Scary}]
% ind = strfind(headers,'Zombies')
% crazyScary = data(:,ind) + 3
% data = [data,crazyScary]
% headers(ind) = []
% data(:,ind) = []
% finalArr = [headers;data]
% writecell(finalArr,outputFilename)
% end



























