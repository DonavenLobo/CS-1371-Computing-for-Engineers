%% Homework 01: Basics
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
% - hw01.m
% - youngsModulus.m
% - nernstPotential.m
% - newtonsLaw.m
% - arrhenius.m
%
%% Test Cases
%
%% youngsModulus
%
%    load('youngsModulus.mat');
% 
%    [E1] = youngsModulus(F1, A1, deltaL1, L01);
%    [E1_soln] = youngsModulus_soln(F1, A1, deltaL1, L01);
%
%    [E2] = youngsModulus(F2, A2, deltaL2, L02);
%    [E2_soln] = youngsModulus_soln(F2, A2, deltaL2, L02);
%
%    [E3] = youngsModulus(F3, A3, deltaL3, L03);
%    [E3_soln] = youngsModulus_soln(F3, A3, deltaL3, L03);
%
%
%% nernstPotential
%
%    load('nernstPotential.mat');
% 
%    [eqPot1] = nernstPotential(Z1, cOut1, cIn1);
%    [eqPot1_soln] = nernstPotential_soln(Z1, cOut1, cIn1);
%    
%
%    [eqPot2] = nernstPotential(Z2, cOut2, cIn2);
%    [eqPot2_soln] = nernstPotential_soln(Z2, cOut2, cIn2);
%
%    [eqPot3] = nernstPotential(Z3, cOut3, cIn3);
%    [eqPot3_soln] = nernstPotential_soln(Z3, cOut3, cIn3);
%
%
%% newtonsLaw
%
%    load('newtonsLaw.mat');
% 
%    [acc1, force1] = newtonsLaw(vIn1, vFin1, delTime1, mass1);
%    [acc1_soln, force1_soln] = newtonsLaw_soln(vIn1, vFin1, delTime1, mass1);
%    
%
%    [acc2, force2] = newtonsLaw(vIn2, vFin2, delTime2, mass2);
%    [acc2_soln, force2_soln] = newtonsLaw_soln(vIn2, vFin2, delTime2, mass2);
%
%    [acc3, force3] = newtonsLaw(vIn3, vFin3, delTime3, mass3);
%    [acc3_soln, force3_soln] = newtonsLaw_soln(vIn3, vFin3, delTime3, mass3);
%
%
%% arrhenius
%
%    load('arrhenius.mat');
% 
%    [T1] = arrhenius(k_1, k0_1, Ea_1);
%    [T1_soln] = arrhenius_soln(k_1, k0_1, Ea_1);
%  
%
%    [T2] = arrhenius(k_2, k0_2, Ea_2);
%    [T2_soln] = arrhenius_soln(k_2, k0_2, Ea_2);
%
%    [T3] = arrhenius(k_3, k0_3, Ea_3);
%    [T3_soln] = arrhenius_soln(k_3, k0_3, Ea_3);
%
%