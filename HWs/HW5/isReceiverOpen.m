function [res] = isReceiverOpen(receiver, defender)
recPos = receiver == 'R'; % logical mask of positions of receivers
defPos = defender == 'D'; % logical mask of positions of defenders
defended = recPos & defPos; % Finds the positions of receivers that are defended
receiver(defended) = ' '; % swaps these in the original string with a space
recPos = find(receiver == 'R'); % Finds the index position of the open reciever
    if isempty(recPos) % If no one is open
        res = 'Patrick Mahomes'' pass was incomplete!';
    else % if someone is open
        yards = recPos * 5; % finds how far the football is thrown
        res = sprintf('Patrick Mahomes completed the pass for %d yards!!',yards);
    end
end