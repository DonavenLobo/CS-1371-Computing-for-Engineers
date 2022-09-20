function [selected] = yeaOrNay(answers, ids, needed)
answers = strrep(answers,'Yea ','Y'); %Compressing answer data to single letter
answers = strrep(answers,'Nay ','N'); %Compressing answer data to single letter
yMask = (answers =='Y'); % Creating a mask for all participants that said yea
allYes = ids(yMask); %Applying mask to ids to have a vector containing all the people willing to participate
selected = allYes(1:needed); %Selecting the first n people based on how many people are needed
end