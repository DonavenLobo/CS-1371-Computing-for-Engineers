function [out] = theLastCucumber(me, opp, moves)
out = {}; % initializes the ouput variable as an empty cell array
for a = 1:2:length(moves) % iterates through all the second moves
    if (opp.health - me.(moves{a})) > 0 % only excecutes if opponent still has health after the attack
        out = [out ; {sprintf('You deal %d damage to the opponent using the move %s!',me.(moves{a}),moves{a})}]; % prints out according statement
        opp.health = opp.health - me.(moves{a});  % stores new opponent health
    else
        out = [out ; {sprintf('You deal %d damage to the opponent using the move %s!',me.(moves{a}),moves{a})}]; % prints out final attack on the oppoenent
        out = [out ; {'The opponent suddenly faints, too exhausted to continue the battle!'}; {sprintf('You reign victorious with %d health remaining! All beings over the sea fear your might!',me.health)}];% prints out victory statements
        break % breaks the for loop to avoid further attacks
    end
    if (me.health - opp.(moves{a+1})) > 0 % checks to see if I will have any ealth after the attack
        out = [out ; {sprintf('The opponent deals %d damage to you using the move %s!' ,opp.(moves{a+1}),moves{a+1})}]; % prints out according statement
        me.health = me.health - opp.(moves{a+1}); % Stores my updated health back into the structure
    else
        out = [out ; {sprintf('The opponent deals %d damage to you using the move %s!' ,opp.(moves{a+1}),moves{a+1})}]; % prints out opponents final attack on me
        out = [out ; {'You suddenly faint, too exhausted to continue the battle!'} ; {sprintf('The opponent takes over your turf with %d health remaining.',opp.health)}]; % prints out opponents victory statement on me
        break
    end

end
end