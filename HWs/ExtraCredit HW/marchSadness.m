function marchSadness(x2019_20_Season_Stats, bracket)
table = readcell(x2019_20_Season_Stats);
teamBracket = readcell(bracket);
headers = table(1,:);
data = table(2:end-1,:);
OutputArray = teamBracket;
% [~,ind] = sort(headers);
% headers = headers(ind)
% data = data(ind);
Gcol = strcmp(headers,'G'); % Games Played
Gdata = cell2mat(data(:,Gcol));
Wcol = strcmp(headers,'W'); % Games Won
Wdata = cell2mat(data(:,Wcol));
Pcol = strcmp(headers,'P'); % Points
Pdata = cell2mat(data(:,Pcol));
OPcol = strcmp(headers,'OP'); % Opponent points
OPdata = cell2mat(data(:,OPcol));
FTcol = strcmp(headers,'FT'); % Free throws
FTdata = cell2mat(data(:,FTcol));
FTAcol = strcmp(headers,'FTA'); % Free throw attempts
FTAdata = cell2mat(data(:,FTAcol));
TRBcol = strcmp(headers,'TRB'); % Total Rebounds;
TRBdata = cell2mat(data(:,TRBcol));
[numOfTeams,~] = size(teamBracket)
round = 1;
% Winners = {};
i = 0;
% checking = data(:,1);
while numOfTeams > 1
    for a = 1:2:numOfTeams
%         x= 1;
        Team1 = OutputArray{a+1,round}
        Team2 = OutputArray{a+i+1,round}
        T1r = find(strcmp(data(:,1),Team1)); % index of team 1 row
        T2r = find(strcmp(data(:,1),Team2)); % index of team 2 row
        num = (1./8).*(Pdata(T1r)./Gdata(T1r))-(Pdata(T2r)./Gdata(T2r))...
            -(1./10).*(OPdata(T1r)./Gdata(T1r)-OPdata(T2r)./Gdata(T2r))...
            +10.*(Wdata(T1r)./Gdata(T1r)-Wdata(T2r)./Gdata(T2r))...
            +8.*(FTdata(T1r)./FTAdata(T1r)-FTdata(T2r)./FTAdata(T2r))...
            +(1./12).*(TRBdata(T1r)./Gdata(T1r)-TRBdata(T2r)./Gdata(T2r));
        if num > 0
            winner = Team1;            
        else
            winner = Team2;
        end
        ind1 = find(strcmp(OutputArray(:,round),Team1))
        ind2 = find(strcmp(OutputArray(:,round),Team2))
        ind = ceil((ind1+ind2)./2)
        OutputArray{ind,round+1} = winner;
%         Winners = [Winners; {winner}];
%         x = x+1;
    end
%     OutputArray = [OutputArray, Winners];
    round = round + 1;
    i = i + 1;
    numOfTeams = numOfTeams./2;
%     [numOfTeams,~] = size(OutputArray)
    
    
    
end
OutputArray




end