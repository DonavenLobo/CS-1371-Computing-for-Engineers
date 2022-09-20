function [num, left] = pizzaParty(people, pizzas)
    num = floor((pizzas*8)/people); %rounds down the number of slices per person to an integer
    left = mod((pizzas*8),people); %find the remainder of the division which would represent the left over pizza slices
end