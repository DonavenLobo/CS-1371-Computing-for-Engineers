function [collated] = deckCollation(attackType, strength, critical)
    len = length(attackType); % finds the length of any of the stats
    collated = cell(1,len); % creates an empty cell array of required size
    for a = 1:len % iterates based on the length the stats
        collated{a} = [{attackType{a}}, {strength(a)}, {critical(a)}];  %  Compiles all the stats together
    end
end