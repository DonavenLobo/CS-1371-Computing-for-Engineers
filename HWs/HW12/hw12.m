%% Homework 12: Images
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
% - hw12.m
% - imageScale.m
% - pretendVacation.m
% - askew.m
% - areYouBlind.m
% - crimeScene.m
% - bacteriaCulture.m
%
%% Test Cases
%
%% imageScale
% %
%    load('imageScale.mat')
% 
%    [height1, width1] = imageScale(microscope1)
%    [height1_soln, width1_soln] = imageScale_soln(microscope1)
%    check1 = isequal(height1, height1_soln) & isequal(width1, width1_soln)
% %
%    [height2, width2] = imageScale(microscope2)
%    [height2_soln, width2_soln] = imageScale_soln(microscope2)
%    check2 = isequal(height2, height2_soln) & isequal(width2, width2_soln)
% 
%    [height3, width3] = imageScale(microscope3)
%    [height3_soln, width3_soln] = imageScale_soln(microscope3)
%    check3 = isequal(height3, height3_soln) & isequal(width3, width3_soln)
%
%
%% pretendVacation
% %
%    load('pretendVacation.mat')
% 
%    pretendVacation(you1, bkgd1)
%    pretendVacation_soln(you1, bkgd1)
%    check1 = checkImage('pretendVacation',you1, bkgd1)
% % %
% 
%    pretendVacation(you2, bkgd2)
%    pretendVacation_soln(you2, bkgd2)
%    check2 = checkImage('pretendVacation',you2, bkgd2)
% 
%    pretendVacation(you3, bkgd3)
%    pretendVacation_soln(you3, bkgd3)
%    check3 = checkImage('pretendVacation',you3, bkgd3)
%
%
%% askew
% 
%    load('askew.mat')
% 
%    [deg1, minHeight1] = askew(filename1)
%    [deg1_soln, minHeight1_soln] = askew_soln(filename1)
%    check1 = isequal(deg1, deg1_soln) & isequal(minHeight1, minHeight1_soln)
% % 
%    [deg2, minHeight2] = askew(filename2)
%    [deg2_soln, minHeight2_soln] = askew_soln(filename2)
%    check2 = isequal(deg2, deg2_soln) & isequal(minHeight2, minHeight2_soln)
% % 
%    [deg3, minHeight3] = askew(filename3)
%    [deg3_soln, minHeight3_soln] = askew_soln(filename3)
%    check3 = isequal(deg3, deg3_soln) & isequal(minHeight3, minHeight3_soln)

%
%% areYouBlind
% 
%    load('areYouBlind.mat')
% 
%    areYouBlind(puppy1, cmat1)
%    areYouBlind_soln(puppy1, cmat1)
%    check1 = checkImage('areYouBlind',puppy1, cmat1)

%    areYouBlind(puppy2, cmat2)
%    areYouBlind_soln(puppy2, cmat2)
%    check2 = checkImage('areYouBlind',puppy2, cmat2);
% 
%    areYouBlind(puppy3, cmat3)
%    areYouBlind_soln(puppy3, cmat3)
%    check3 = checkImage('areYouBlind',puppy3, cmat3);
%
%
%% crimeScene

%    load('crimeScene.mat')
% 
%    crimeScene(photo1)
%    crimeScene_soln(photo1)
%    check1 = checkImage('crimeScene',photo1)
% %
%    crimeScene(photo2)
%    crimeScene_soln(photo2)
%    check2 = checkImage('crimeScene',photo2)
% 
%    crimeScene(photo3)
%    crimeScene_soln(photo3)
%    check3 = checkImage('crimeScene',photo3)

%
%% bacteriaCulture

%    load('bacteriaCulture.mat')
% 
%    [numCircles1] = bacteriaCulture(imName1, rVal1, gVal1, bVal1)
%    [numCircles1_soln] = bacteriaCulture_soln(imName1, rVal1, gVal1, bVal1)
%    check1 = isequal(numCircles1, numCircles1_soln)
% %
%    [numCircles2] = bacteriaCulture(imName2, rVal2, gVal2, bVal2)
%    [numCircles2_soln] = bacteriaCulture_soln(imName2, rVal2, gVal2, bVal2)
%    check2 = isequal(numCircles2, numCircles2_soln)
% 
%    [numCircles3] = bacteriaCulture(imName3, rVal3, gVal3, bVal3)
%    [numCircles3_soln] = bacteriaCulture_soln(imName3, rVal3, gVal3, bVal3)
%    check3 = isequal(numCircles3, numCircles3_soln)
%
%