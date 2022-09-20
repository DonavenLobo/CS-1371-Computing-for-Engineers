%% Homework 13: Plotting and Numerical Methods
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
% - hw13.m
% - badRobot.m
% - surveyProcessing.m
% - publixMarathon.m
% - noisyData.m
% - histogram.m
%
%% Test Cases
%
%% badRobot
%
%    load('badRobot.mat');
% 
%    [fixedData1] = badRobot(data1);
%    [fixedData1_soln] = badRobot_soln(data1);
%    check1 = isequal(fixedData1, fixedData1_soln)
% 
%    [fixedData2] = badRobot(data2);
%    [fixedData2_soln] = badRobot_soln(data2);
%    check2 = isequal(fixedData2, fixedData2_soln)
% 
%    [fixedData3] = badRobot(data3);
%    [fixedData3_soln] = badRobot_soln(data3);
%    check3 = isequal(fixedData3, fixedData3_soln)
%
%
%% surveyProcessing
% 
%    load('surveyProcessing.mat');
% 
%    [y_outlier1, y_no_outlier1] = surveyProcessing(x1, y1, N1)
%    [y_outlier1_soln, y_no_outlier1_soln] = surveyProcessing_soln(x1, y1, N1)
%    check1 = isequal(y_outlier1, y_outlier1_soln) & isequal(y_no_outlier1, y_no_outlier1_soln)
% 
%    [y_outlier2, y_no_outlier2] = surveyProcessing(x2, y2, N2)
%    [y_outlier2_soln, y_no_outlier2_soln] = surveyProcessing_soln(x2, y2, N2)
%    check2 = isequal(y_outlier2, y_outlier2_soln) & isequal(y_no_outlier2, y_no_outlier2_soln)
% 
%    [y_outlier3, y_no_outlier3] = surveyProcessing(x3, y3, N3)
%    [y_outlier3_soln, y_no_outlier3_soln] = surveyProcessing_soln(x3, y3, N3)
%    check3 = isequal(y_outlier3, y_outlier3_soln) & isequal(y_no_outlier3, y_no_outlier3_soln)
%
%
%% publixMarathon

%    load('publixMarathon.mat');
% 
%    [completeTime1] = publixMarathon(t1, ca1);
%    [completeTime1_soln] = publixMarathon_soln(t1, ca1);
%    check1 = isequal(completeTime1, completeTime1_soln)
% 
%    [completeTime2] = publixMarathon(t2, ca2);
%    [completeTime2_soln] = publixMarathon_soln(t2, ca2);
%    check2 = isequal(completeTime2, completeTime2_soln)
% 
%    [completeTime3] = publixMarathon(t3, ca3);
%    [completeTime3_soln] = publixMarathon_soln(t3, ca3);
%    check3 = isequal(completeTime3, completeTime3_soln)
%
%
%% noisyData
%
%    load('noisyData.mat');
% 
%    noisyData(data1, r1);
%    noisyData_soln(data1, r1);
%    [match1, desc1] = checkPlots('noisyData',data1, r1) 
% 
%    noisyData(data2, r2);
%    noisyData_soln(data2, r2);
%    [match2, desc2] = checkPlots('noisyData',data2, r2)
% 
%    noisyData(data3, r3);
%    noisyData_soln(data3, r3);
%    [match3, desc3] = checkPlots('noisyData',data3, r3)
%
%
%% histogram
% % 
%    load('histogram.mat')
% 
%    histogram(data1)
%    histogram_soln(data1);
%    [match1, desc1] = checkPlots('histogram',data1)
% 
%    histogram(data2);
%    histogram_soln(data2);
%    [match2, desc2] = checkPlots('histogram',data2)
% 
%    histogram(data3);
%    histogram_soln(data3);
%    [match3, desc3] = checkPlots('histogram',data3)
%
%