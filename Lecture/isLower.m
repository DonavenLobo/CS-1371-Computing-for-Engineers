function [out] = isLower(ch)
    % Write a function that returns true if a letter is lowercase and false
    % otherwise
    
    out = (ch>=97) & (ch<=122);
    %out = (ch>='a') & (ch<='z');
    
end