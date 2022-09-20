function [revised, overall] = cupcakeContest(flavor, cutoffScore)
mask = flavor > cutoffScore;
revised = sort(flavor(mask));
overall = mean(revised);
revised = revised(end:-1:1);
end