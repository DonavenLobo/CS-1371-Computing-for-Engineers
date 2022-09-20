function [hrHand, minHand] = citizenWatch(hr, min, deltaMin)
    if ((min + deltaMin)>=0) %Excecute if the minutes after adding deltaMin is positive
        minHand = mod((min + deltaMin),60); %Finding remainder after dividing by 60
        hrGained = floor((min + deltaMin)/60); %Variable stores the hours gained by flooring division
        hrHand = mod((hr + hrGained),12); %Cycles the hours so value is in acceptable range
    else
        minHand = mod((min + deltaMin),60);
        hrLost = floor((min + deltaMin)/60);
        hrHand = mod((hr + hrLost),12);
    end
end