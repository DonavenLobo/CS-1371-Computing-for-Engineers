function [modified] = repWord(original, wordFind, wordReplace)
Pos = strfind(original,wordFind); % Find the position of the word you are removing in the string
a = original(1:(Pos-1)); % Store the first half of the sentence, excluding wordFind, in a
b = original((Pos+length(wordFind)):length(original)); % Store second half of sentence, removing wordFind, in b
modified = [a,wordReplace,b];% Put it all together
% Sentence = [original(1:WordPosition),wordReplace,original(WordPosition+length(wordFind):length(original));  
end