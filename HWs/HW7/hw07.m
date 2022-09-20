%% Homework 07: Arrays
%
%% Honor Code Agreement
%
% By entering my name, GT Username, and Section below, I am confirming that
% I am bound by the Georgia Tech Honor Code, which can be found here:
%
% http://osi.gatech.edu/content/honor-code.
%
% Failing to agree will result in a 0 for the entire assignment.
%
% Name: Donaven Lobo
% GT Username (gburdell3): Dlobo6
% Section: C
%
%% Banned Functions
%
% In general, you are allowed to use any function you see fit. However, 
% there are a few functions you are NOT allowed to ever use. Additionally, 
% specific homework problems may specify that you cannot use certain
% functions. Code that uses any of these functions will automatically 
% receive a 0.
%
% NEVER use the following functions in your function code:
%
% * input
% * solve
% * fclose all
% * close
% * load
% * figure
% * imshow
% * image
% * global
%
%% Files to Submit
% 
% For full credit, you should submit *ONLY* the following files to Canvas 
% by the assignment deadline:
%
% - hw07.m
% - pokeStats.m
% - pokePics.m
% - escapeTeamRocket.m
% - pokeMigration.m
% - swordAndShield.m
%
%% Test Cases
%
%% pokeStats
%
%    load('pokeStats.mat');
% 
%    [stats1] = pokeStats(missingStats1, replacementStats1)
%    [stats1_soln] = pokeStats_soln(missingStats1, replacementStats1)
%    check1 = isequal(stats1, stats1_soln)
% %
%    [stats2] = pokeStats(missingStats2, replacementStats2)
%    [stats2_soln] = pokeStats_soln(missingStats2, replacementStats2)
%    check2 = isequal(stats2, stats2_soln)
% 
%    [stats3] = pokeStats(missingStats3, replacementStats3)
%    [stats3_soln] = pokeStats_soln(missingStats3, replacementStats3)
%    check3 = isequal(stats3, stats3_soln)
%
%
%% pokePics
%
%    load('pokePics.mat');
% 
%    [pic1] = pokePics(encoded1, dimension1)
%    [pic1_soln] = pokePics_soln(encoded1, dimension1)
%    check1 = isequal(pic1, pic1_soln)
% 
%    [pic2] = pokePics(encoded2, dimension2)
%    [pic2_soln] = pokePics_soln(encoded2, dimension2)
%    check2 = isequal(pic2, pic2_soln)
% 
%    [pic3] = pokePics(encoded3, dimension3)
%    [pic3_soln] = pokePics_soln(encoded3, dimension3)
%    check3 = isequal(pic3, pic3_soln)
%
%
%% escapeTeamRocket
%
%    load('escapeTeamRocket.mat');
% 
%    [out1] = escapeTeamRocket(map1, dir1)
%    [out1_soln] = escapeTeamRocket_soln(map1, dir1)
%    check1 = isequal(out1, out1_soln)
% % 
%    [out2] = escapeTeamRocket(map2, dir2)
%    [out2_soln] = escapeTeamRocket_soln(map2, dir2)
%    check2 = isequal(out2, out2_soln)
% 
%    [out3] = escapeTeamRocket(map3, dir3)
%    [out3_soln] = escapeTeamRocket_soln(map3, dir3)
%    check3 = isequal(out3, out3_soln)
%
%
%% pokeMigration
% %
%    load('pokeMigration.mat');
% 
%    [updatedMap1] = pokeMigration(oldMap1)
%    [updatedMap1_soln] = pokeMigration_soln(oldMap1)
%    check1 = isequal(updatedMap1, updatedMap1_soln)
% 
%    [updatedMap2] = pokeMigration(oldMap2)
%    [updatedMap2_soln] = pokeMigration_soln(oldMap2)
%    check2 = isequal(updatedMap2, updatedMap2_soln)
% 
%    [updatedMap3] = pokeMigration(oldMap3)
%    [updatedMap3_soln] = pokeMigration_soln(oldMap3)
%    check3 = isequal(updatedMap3, updatedMap3_soln)

%
%% swordAndShield
% %
%    load('swordAndShield.mat');
% 
%    [pokemans1] = swordAndShield(original1, evColumn1, threshold1)
%    [pokemans1_soln] = swordAndShield_soln(original1, evColumn1, threshold1)
%    check1 = isequal(pokemans1, pokemans1_soln)
% 
%    [pokemans2] = swordAndShield(original2, evColumn2, threshold2)
%    [pokemans2_soln] = swordAndShield_soln(original2, evColumn2, threshold2)
%    check2 = isequal(pokemans2, pokemans2_soln)
% 
%    [pokemans3] = swordAndShield(original3, evColumn3, threshold3)
%    [pokemans3_soln] = swordAndShield_soln(original3, evColumn3, threshold3)
%    check3 = isequal(pokemans3, pokemans3_soln)
%
%