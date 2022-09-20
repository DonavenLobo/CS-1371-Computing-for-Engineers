function [out] = isLowOrDig(ch)
%     out = ((ch>='a') & (ch<='z')) | ((ch>='0') & (ch<='9'));
    out = isLower(ch) | isDig(ch); % Alternate method using helper functions
    function [out] = isLower(ch)
        out = (ch>='a') & (ch<='z');
    end
    function [out] = isDig(ch)
        out = (ch>='0') & (ch<='9');
    end
 
end