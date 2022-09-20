function primeHorses = Q4(horses)
mask = strcmp({horses.Name}, 'dwag')
horses = horses(~mask)
ages = [horses.Age]
[~,inds] = sort(ages,'a')
horses= horses(inds)
for x = 1:length(horses)
    horses(inds(inds(x))).Rank = inds(x)
end
primeHorses = rmfield(horses, 'Age')
end
