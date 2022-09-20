function [prop] = lovePropagation(init, lim)
x=1; % predefine an index for the while loop
current = 0; % predefine a condition for the while loop
    while current <= lim % runs until the final value of the vector init is greater than lim
        init(x+2) = init(x) + init(x+1); % Adds the two previous items from the vector and stores the sum in the next position
        current = init(end); % Stores the last item in the vector
        x = x+1; % increases for the loop, to allow it to not be infinite
    end
prop = init(1:end-1); % Stores all the values except the value that is greater than lim
end