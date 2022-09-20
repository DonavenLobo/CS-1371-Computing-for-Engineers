%% Homework 10: Low Level File I/O
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
% - hw10.m
% - sk8erBoi.m
% - girlfriend.m
% - helloKitty.m
% - whatTheHeck.m
% - complicated.m
%
%% Test Cases
%
%% sk8erBoi
%
%    load('sk8erBoi.mat')

%    sk8erBoi(love1, rej1)
%    sk8erBoi_soln(love1, rej1)
%    visdiff('love1&rej1_soln.txt','love1&rej1.txt')
%

%    sk8erBoi(love2, rej2)
%    sk8erBoi_soln(love2, rej2)
%    visdiff('love2&rej2_soln.txt','love2&rej2.txt')
%
%    sk8erBoi(love3, rej3)
%    sk8erBoi_soln(love3, rej3)
%    visdiff('love3&rej3_soln.txt','love3&rej3.txt')
%
%
%% girlfriend
%
%    load('girlfriend.mat')

%    girlfriend(songLyrics1)
%    girlfriend_soln(songLyrics1)
%    visdiff('lyrics1_reordered_soln.txt','lyrics1_reordered.txt')
%
% %
%    girlfriend(songLyrics2)
%    girlfriend_soln(songLyrics2)
%    visdiff('lyrics2_reordered_soln.txt','lyrics2_reordered.txt')

%    girlfriend(songLyrics3)
%    girlfriend_soln(songLyrics3)
%    visdiff('lyrics3_reordered_soln.txt','lyrics3_reordered.txt')
%
%
%% helloKitty
%
%    load('helloKitty.mat')

%    helloKitty(file1, ca1)
%    helloKitty_soln(file1, ca1)
%    visdiff('complicated_fixed_soln.txt','complicated_fixed.txt')
%
%
%    helloKitty(file2, ca2)
%    helloKitty_soln(file2, ca2)
%    visdiff('myHappyEnding_fixed_soln.txt','myHappyEnding_fixed.txt')
%
%    helloKitty(file3, ca3)
%    helloKitty_soln(file3, ca3)
%    visdiff('sk8rBoi_fixed_soln.txt','sk8rBoi_fixed.txt')
%
%
%% whatTheHeck
%
%    load('whatTheHeck.mat')
% 
%    whatTheHeck(filename1)
%    whatTheHeck_soln(filename1)
%    visdiff('whatTheHeck_counts_soln.txt','whatTheHeck_counts.txt')

% %
%    whatTheHeck(filename2)
%    whatTheHeck_soln(filename2)
%    visdiff('girlfriend_counts_soln.txt','girlfriend_counts.txt')
% 
%    whatTheHeck(filename3)
%    whatTheHeck_soln(filename3)
%    visdiff('other_sk8terBoy_counts_soln.txt','other_sk8terBoy_counts.txt')
%
%
%% complicated
%
%    load('complicated.mat')
% 
%    [str1] = complicated(song1, directions1)
%    [str1_soln] = complicated_soln(song1, directions1)
%    check1 = isequal(str1, str1_soln)
% 
%    [str2] = complicated(song2, directions2)
%    [str2_soln] = complicated_soln(song2, directions2)
%    check2 = isequal(str2, str2_soln)
% 
%    [str3] = complicated(song3, directions3)
%    [str3_soln] = complicated_soln(song3, directions3)
%    check3 = isequal(str3, str3_soln)
% 
%