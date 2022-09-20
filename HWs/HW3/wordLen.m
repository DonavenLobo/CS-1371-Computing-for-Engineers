function [vec] = wordLen(sentence)
vec = [0,0,0]; % Create empty vector of length 3
split = strsplit(sentence); % Split the sentence into word by word, store each word in 'Split' 
% a = char(split(1)) %%Testing Values%%
% b = char(a)
%  length(a)
   for a = 1:length(split) %for loop iterating the number of times basd on number of words
       vec(a) = length(char(split(a))); %Converts the vector value to 'char' and then vec(a) stores the length of the char
   end
end