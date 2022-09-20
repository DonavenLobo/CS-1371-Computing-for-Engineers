function [out] = Dhruv(in)
in = 'Dhruv can''t open his lollipop because he sucks.'
while ~isempty(in)
    [out,in] = strtok(in)
end

end