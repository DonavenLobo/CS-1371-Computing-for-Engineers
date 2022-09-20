function [pic] = pokePics(encoded, dimension)
pic = zeros(dimension(1),dimension(2));% Initialize a zero vector based on the dimensions stated
len = length(encoded); % find the length of the vector as stated in the instructions
encoded = encoded - len; % Once again doing the instructions stated
encoded(encoded>='A'& encoded<='Z') = '*'; % replacing all the Capital letter with '*'
encoded(encoded>='a'& encoded<='z') = '#'; % replacing all the Lower case letters with '#'
numOfElements = double(dimension(1).*dimension(2)); % Toal number of entries in the array
    for x = 1:numOfElements
        pic(x) = encoded(x); % replaces zero array with the actual entries 
    end
pic = char(pic); % convert the ASCII values to charectors
end