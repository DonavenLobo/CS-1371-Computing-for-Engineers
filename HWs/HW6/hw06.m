%% Homework 06: Iteration
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
% - hw06.m
% - lovePropagation.m
% - mostAdmired.m
% - flowerRun.m
% - loveLetter.m
% - badBreakup.m
%
%% Test Cases
%
%% lovePropagation
%
%    load('lovePropagation.mat')

%    [prop1] = lovePropagation(init1, lim1)
%    [prop1_soln] = lovePropagation_soln(init1, lim1)
%    check_lovePropagation2 = isequal(prop1, prop1_soln)

%    [prop2] = lovePropagation(init2, lim2)
%    [prop2_soln] = lovePropagation_soln(init2, lim2)
%    check_lovePropagation2 = isequal(prop2, prop2_soln)
% 
%    [prop3] = lovePropagation(init3, lim3)
%    [prop3_soln] = lovePropagation_soln(init3, lim3)
%    check_lovePropagation3 = isequal(prop3, prop3_soln)
%
%
%% mostAdmired
%
%    load('mostAdmired.mat')
% 
%    [out1] = mostAdmired(students1, letters1)
%    [out1_soln] = mostAdmired_soln(students1, letters1)
%    check_mostAdmired1 = isequal(out1, out1_soln)
% %
%    [out2] = mostAdmired(students2, letters2)
%    [out2_soln] = mostAdmired_soln(students2, letters2)
%    check_mostAdmired2 = isequal(out2, out2_soln)
% 
%    [out3] = mostAdmired(students3, letters3)
%    [out3_soln] = mostAdmired_soln(students3, letters3)
%    check_mostAdmired3 = isequal(out3, out3_soln)
%
%
%% flowerRun
%
%    load('flowerRun.mat')
% 
%    [out1] = flowerRun(houses1, stores1)
%    [out1_soln] = flowerRun_soln(houses1, stores1)
%    check_flowerRun1 = isequal(out1, out1_soln)
% 
%    [out2] = flowerRun(houses2, stores2)
%    [out2_soln] = flowerRun_soln(houses2, stores2)
%    check_flowerRun2 = isequal(out2, out2_soln)
% 
%    [out3] = flowerRun(houses3, stores3)
%    [out3_soln] = flowerRun_soln(houses3, stores3)
%    check_flowerRun3 = isequal(out3, out3_soln)
%
%
%% loveLetter
%
%    load('loveLetter.mat')
% 
%    [decrypted1] = loveLetter(encrypted1, pairs1)
%    [decrypted1_soln] = loveLetter_soln(encrypted1, pairs1)
%    check_loveLetter1 = isequal(decrypted1, decrypted1_soln)
%
%    [decrypted2] = loveLetter(encrypted2, pairs2)
%    [decrypted2_soln] = loveLetter_soln(encrypted2, pairs2)
%    check_loveLetter2 = isequal(decrypted2, decrypted2_soln)
%
%    [decrypted3] = loveLetter(encrypted3, pairs3)
%    [decrypted3_soln] = loveLetter_soln(encrypted3, pairs3)
%    check_loveLetter3 = isequal(decrypted3, decrypted3_soln)
%
%
%% badBreakup
%
%    load('badBreakup.mat')

%    [val1] = badBreakup(list1)
%    [val1_soln] = badBreakup_soln(list1)
%    check_badBreakup1 = isequal(val1, val1_soln)
%
%    [val2] = badBreakup(list2)
%    [val2_soln] = badBreakup_soln(list2)
%    check_badBreakup2 = isequal(val2, val2_soln)
%
%    [val3] = badBreakup(list3)
%    [val3_soln] = badBreakup_soln(list3)
%    check_badBreakup3 = isequal(val3, val3_soln)
%
%