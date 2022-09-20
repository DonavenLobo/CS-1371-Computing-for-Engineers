function [square,count] = perfectSquare(vec)
negMask = vec >= 0;
posVec = vec(negMask);
square = posVec(sqrt(posVec)==floor(sqrt(posVec)));
count = length(square);
end