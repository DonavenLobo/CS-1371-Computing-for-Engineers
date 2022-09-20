function [playoffTeam] = playoffCommittee(team1, team2)
playoffTeam = 'The %s make it into the playoffs over the %s!'; % Base sring format
    if strcmp(team1,team2) % Checks if sting1 and string2 are the same team
        playoffTeam = 'Oh this isn''t a matchup, it''s practice!';
    else % if not...
        switch team1 %Finds out which team, team1 is
            case 'Patriots'
                switch team2 %Finds out which team, team2 is
                    case {'Falcons','Jaguars'} % teams that team1 beat
                        playoffTeam = sprintf(playoffTeam,team1,team2);
                    otherwise
                        playoffTeam = sprintf(playoffTeam,team2,team1);
                end
            case 'Falcons'
                switch team2
                    case {'Giants','49ers'}
                        playoffTeam = sprintf(playoffTeam,team1,team2);
                    otherwise
                        playoffTeam = sprintf(playoffTeam,team2,team1);
                end
            case 'Giants'
                switch team2
                    case {'Patriots','Jaguars'}
                        playoffTeam = sprintf(playoffTeam,team1,team2);
                    otherwise
                        playoffTeam = sprintf(playoffTeam,team2,team1);
                end
            case '49ers'
                switch team2
                    case {'Giants','Patriots'}
                        playoffTeam = sprintf(playoffTeam,team1,team2);
                    otherwise
                        playoffTeam = sprintf(playoffTeam,team2,team1);
                end
            otherwise
                switch team2
                    case {'Falcons','49ers'}
                        playoffTeam = sprintf(playoffTeam,team1,team2);
                    otherwise
                        playoffTeam = sprintf(playoffTeam,team2,team1);
                end
        end
    end
end