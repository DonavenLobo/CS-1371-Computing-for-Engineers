function weightedPigs = Q6(pigs)
[~, mask] = sort([pigs.Weight])
pigs = pigs(mask)
weightedPigs = {pigs.Nickname}
end