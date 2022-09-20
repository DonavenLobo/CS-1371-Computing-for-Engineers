function [ndx] = alphaIndex(c)
    letter = upper(c);  %Make all the inputs uppercase
    ndx =  double(letter) - 'A' + 1; %Take away the ASCII value of given letter minus the position of A + 1 to index it according to problem
end
