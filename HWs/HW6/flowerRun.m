function [out] = flowerRun(houses, stores)
x = 1; % Initialize a value for the iteration
    for a = houses % a holds the each of the values in the house
        distances = abs(stores - a); % finds the distance of one house from all the stores
        minDist = min(distances); % find the minimum distance from the vector
        minDistStore = stores(distances == minDist); % assigns the closest store to the variable
        out(x) = minDistStore; % concatonates the output vector to hold the closest store to the given house
        x = x+1; % increments up
    end
end