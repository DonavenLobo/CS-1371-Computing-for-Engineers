function readable = analysePlanets(planets,data)
readable = '';
AddCols = data(:,1) + data(:,2);
for x = 1:length(AddCols)
    [CurrPlanet,planets] = strtok(planets);
    readable = [readable,CurrPlanet, ':',num2str(AddCols(x)),'. '];
end
end