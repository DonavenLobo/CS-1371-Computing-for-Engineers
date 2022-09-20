%% checkPlots: Compare your plot with the solution
%
%   [match, desc] = checkPlots(funcName, funcInputs ...)
%
%   Inputs:
%       (char) funcName: The name of the function you wish to check, as a
%           character vector (do NOT include '_soln')
%       (variable) funcInputs: The remaining inputs to this function are 
%           the inputs that you would normally pass into the function that 
%           you are checking.
%
%   Outputs:
%       (logical) match: This will be true if the student and solution 
%           plots are identical, and false otherwise
%       (char) desc: A description of why the student's plot is incorrect. 
%           If match is true, then desc is empty
%
%   Example:
%       If you have a function called "testFunc" and the following test:
%
%           testFunc(30, true, {'cats', 'dogs'});
%
%       Then to check the plot produced by "testFunc" against the solution
%       function "testFunc_soln" for this test case you would run:
%
%           [m, d] = checkPlots('testFunc', 30, true, {'cats', 'dogs'});
%
%   Note:
%   If your function's output plot does not match the output plot of the
%   solution, then two figures will appear showing the output of your
%   function and the solution output, and the differences between them.