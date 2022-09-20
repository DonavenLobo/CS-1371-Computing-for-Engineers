%% Homework 05: Conditionals
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
% - hw05.m
% - haveEnoughWings.m
% - whoGonnaWin.m
% - isReceiverOpen.m
% - playoffCommittee.m
% - myOtRules.m
%
%% Test Cases
%
%% haveEnoughWings
% %
%    load('haveEnoughWings.mat');
% 
%    [statement1] = haveEnoughWings(wings1, people1, wpp1)
%    [statement1_soln] = haveEnoughWings_soln(wings1, people1, wpp1)
%    check_haveEnoughWings1 = isequal(statement1, statement1_soln)
% 
%    [statement2] = haveEnoughWings(wings2, people2, wpp2)
%    [statement2_soln] = haveEnoughWings_soln(wings2, people2, wpp2)
%    check_haveEnoughWings2 = isequal(statement2, statement2_soln)
% 
%    [statement3] = haveEnoughWings(wings3, people3, wpp3)
%    [statement3_soln] = haveEnoughWings_soln(wings3, people3, wpp3)
%    check_haveEnoughWings3 = isequal(statement3, statement3_soln)
% %
%
%% whoGonnaWin
%
%    load('whoGonnaWin.mat');
%
%    [sentence1] = whoGonnaWin(scores49_1, scoresCh_1)
%    [sentence1_soln] = whoGonnaWin_soln(scores49_1, scoresCh_1)
%    check_whoGonnaWing1 = isequal(sentence1, sentence1_soln)
% 
%    [sentence2] = whoGonnaWin(scores49_2, scoresCh_2)
%    [sentence2_soln] = whoGonnaWin_soln(scores49_2, scoresCh_2)
%    check_whoGonnaWing2 = isequal(sentence2, sentence2_soln)
% 
%    [sentence3] = whoGonnaWin(scores49_3, scoresCh_3)
%    [sentence3_soln] = whoGonnaWin_soln(scores49_3, scoresCh_3)
%    check_whoGonnaWing3 = isequal(sentence3, sentence3_soln)

%
%% isReceiverOpen
%
%    load('isReceiverOpen.mat');
%
%    [res1] = isReceiverOpen(receiver1, defender1)
%    [res1_soln] = isReceiverOpen_soln(receiver1, defender1)
%    check_isRecieverOpen1 = isequal(res1, res1_soln)
%
%    [res2] = isReceiverOpen(receiver2, defender2)
%    [res2_soln] = isReceiverOpen_soln(receiver2, defender2)
%    check_isRecieverOpen2 = isequal(res2, res2_soln)

%    [res3] = isReceiverOpen(receiver3, defender3)
%    [res3_soln] = isReceiverOpen_soln(receiver3, defender3)
%    check_isRecieverOpen3 = isequal(res3, res3_soln)
%
%
%% playoffCommittee
%
%    load('playoffCommittee.mat');
% %
%    [playoffTeam1] = playoffCommittee(team11, team12)
%    [playoffTeam1_soln] = playoffCommittee_soln(team11, team12)
%    check_playoffCommittee1 = isequal(playoffTeam1, playoffTeam1_soln)
% 
%    [playoffTeam2] = playoffCommittee(team21, team22)
%    [playoffTeam2_soln] = playoffCommittee_soln(team21, team22)
%    check_playoffCommittee2 = isequal(playoffTeam2, playoffTeam2_soln)
% %
%    [playoffTeam3] = playoffCommittee(team31, team32)
%    [playoffTeam3_soln] = playoffCommittee_soln(team31, team32)
%    check_playoffCommittee3 = isequal(playoffTeam3, playoffTeam3_soln)
%
%
%% myOtRules
%
%    load('myOtRules.mat')
%
%    [sent1] = myOtRules(team1_1, team2_1)
%    [sent1_soln] = myOtRules_soln(team1_1, team2_1)
%    check_myOtRules1 = isequal(sent1, sent1_soln)
%
%    [sent2] = myOtRules(team1_2, team2_2)
%    [sent2_soln] = myOtRules_soln(team1_2, team2_2)
%    check_myOtRules2 = isequal(sent2, sent2_soln)

   [sent3] = myOtRules(team1_3, team2_3)
   [sent3_soln] = myOtRules_soln(team1_3, team2_3)
   check_myOtRules3 = isequal(sent3, sent3_soln)
%
%