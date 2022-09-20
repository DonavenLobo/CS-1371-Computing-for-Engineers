function [statement] = haveEnoughWings(wings, people, wpp)
totalWings = people * wpp; % Gives you the total number of wings needed
    if (wings > totalWings) % Case if we have enough already
        leftOver = wings - totalWings;
        statement = sprintf('We have enough wings! In fact, we have %d left over!',leftOver); % Use %s and sprintf() to use the placeholder for the string
    elseif (wings < totalWings) % Case if we don't have enough already
        needed = totalWings - wings;
        statement = sprintf('Call Wingzone immediately! We need %d more wings!',needed);
    elseif (wings == totalWings) % case if we have exactly the right amount of wings
        statement = 'Wow! We have exactly enough wings for the party!';
    else % error case to protect function from invalid inputs
        error('Invalid input argument received')
    end       
end