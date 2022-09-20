%% Homework 04: Masking and Indexing
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
% GT Username (gburdell3): dlobo6
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
% - hw04.m
% - corruptedMessage.m
% - olympicTryouts.m
% - yeaOrNay.m
% - heatPlanner.m
% - eventList.m
%
%% Test Cases
%
%% corruptedMessage
% %
%    load('corruptedMessage.mat');

%    [fixedText1] = corruptedMessage(corr1, ref1)
%    [fixedText1_soln] = corruptedMessage_soln(corr1, ref1)
%    check_corruptedMessage1 = isequal(fixedText1, fixedText1_soln)
%
%    [fixedText2] = corruptedMessage(corr2, ref2)
%    [fixedText2_soln] = corruptedMessage_soln(corr2, ref2)
%    check_corruptedMessage2 = isequal(fixedText2, fixedText2_soln)
%
%    [fixedText3] = corruptedMessage(corr3, ref3)
%    [fixedText3_soln] = corruptedMessage_soln(corr3, ref3)
%    check_corruptedMessage3 = isequal(fixedText3, fixedText3_soln)
%
%
%% olympicTryouts
%
%    load('olympicTryouts.mat');
% 
%    [passed1, numPass1] = olympicTryouts(id1, runTimes1, highJump1, discus1, longJump1)
%    [passed1_soln, numPass1_soln] = olympicTryouts_soln(id1, runTimes1, highJump1, discus1, longJump1)
%    check_olympicTryouts1 = isequal(passed1, passed1_soln) & isequal(numPass1, numPass1_soln)
% 
%    [passed2, numPass2] = olympicTryouts(id2, runTimes2, highJump2, discus2, longJump2)
%    [passed2_soln, numPass2_soln] = olympicTryouts_soln(id2, runTimes2, highJump2, discus2, longJump2)
%    check_olympicTryouts2 = isequal(passed2, passed2_soln) & isequal(numPass2, numPass2_soln)
% 
%    [passed3, numPass3] = olympicTryouts(id3, runTimes3, highJump3, discus3, longJump3)
%    [passed3_soln, numPass3_soln] = olympicTryouts_soln(id3, runTimes3, highJump3, discus3, longJump3)
%    check_olympicTryouts3 = isequal(passed3, passed3_soln) & isequal(numPass3, numPass3_soln)
%
%
%% yeaOrNay
%
%    load('yeaOrNay.mat');

%    [selected1] = yeaOrNay(answers1, ids1, needed1)
%    [selected1_soln] = yeaOrNay_soln(answers1, ids1, needed1)
%    check_yeaOrNay1 = isequal(selected1, selected1_soln)

%    [selected2] = yeaOrNay(answers2, ids2, needed2)
%    [selected2_soln] = yeaOrNay_soln(answers2, ids2, needed2)
%    check_yeaOrNay2 = isequal(selected2, selected2_soln)

%    [selected3] = yeaOrNay(answers3, ids3, needed3)
%    [selected3_soln] = yeaOrNay_soln(answers3, ids3, needed3)
%    check_yeaOrNay3 = isequal(selected3, selected3_soln)
%
%
%% heatPlanner
%
%    load('heatPlanner.mat');
% % 
%    [heat_desc1] = heatPlanner(numAthletes1)
%    [heat_desc1_soln] = heatPlanner_soln(numAthletes1)
%    check_heatPlanner1 = isequal(heat_desc1, heat_desc1_soln)
% 
%    [heat_desc2] = heatPlanner(numAthletes2)
%    [heat_desc2_soln] = heatPlanner_soln(numAthletes2)
%    check_heatPlanner2 = isequal(heat_desc2, heat_desc2_soln)
% 
%    [heat_desc3] = heatPlanner(numAthletes3)
%    [heat_desc3_soln] = heatPlanner_soln(numAthletes3)
%    check_heatPlanner3 = isequal(heat_desc3, heat_desc3_soln)
%
%
%% eventList
%
%    load('eventList.mat');
% 
%    [mistaken1, positions1] = eventList(events1, belongs1)
%    [mistaken1_soln, positions1_soln] = eventList_soln(events1, belongs1)
%    check_eventList1 = isequal(mistaken1, mistaken1_soln) & isequal(positions1, positions1_soln)
% 
%    [mistaken2, positions2] = eventList(events2, belongs2)
%    [mistaken2_soln, positions2_soln] = eventList_soln(events2, belongs2)
%    check_eventList2 = isequal(mistaken2, mistaken2_soln) & isequal(positions2, positions2_soln)
% 
%    [mistaken3, positions3] = eventList(events3, belongs3)
%    [mistaken3_soln, positions3_soln] = eventList_soln(events3, belongs3)
%    check_eventList3 = isequal(mistaken3, mistaken3_soln) & isequal(positions3, positions3_soln)
% %
%