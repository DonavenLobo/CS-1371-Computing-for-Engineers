function [sentence] = whoGonnaWin(scores49, scoresCh)
sum49 = sum(scores49); % 49ers score ay half time
sumCh = sum(scoresCh); % Chiefs score at half time
lead = abs(sum49-sumCh); % Difference in their scores
    if (sum49-sumCh > 10 || sumCh-sum49 > 10) % Team is leading by more than 10 points
        if (sum49 > sumCh) % 49ers are leading
            sentence = sprintf('The 49ers have a lead of %d points! It looks like the Chiefs aren''t catching up!',lead);
        else % Chiefs are leading
            sentence = sprintf('The Chiefs have a lead of %d points! It looks like the 49ers aren''t catching up!',lead);
        end
    elseif (sum49-sumCh > 0 || sumCh-sum49 > 0) % Team is leading but by less than 10 points
        if (sum49 > sumCh) % 49ers are leading
            sentence = sprintf('The 49ers have a lead of %d points! The Chiefs may still make a comeback though!',lead);
        else % Chiefs are leading
            sentence = sprintf('The Chiefs have a lead of %d points! The 49ers may still make a comeback though!',lead);
        end
    else % Teams are drawn
        sentence = 'It''s a complete draw! Buckle in for an exciting second half!';
    end
end