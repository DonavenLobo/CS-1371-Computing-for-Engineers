% checkImage Compare Student and Solution Images
%
%	match = checkImage(funcName, funcInputs ... )
%
%	Inputs:
%       (char) funcName: The name of the function you wish to check, as a
%           character vector
%       (variable) funcInputs: The remaining inputs to this function are the
%           inputs that you would normally pass into the function that you
%           are checking
%
%   Outputs:
%       (logical) match: This will be true if the student and solution 
%           images are identical, and false otherwise
%
%   Example:
%       If you have a function called "testFunc" and the following test case:
%
%           testFunc(30, true, {'cats', 'dogs'})
%
%       Then to check the image produced by "testFunc" against the solution
%       function "testFunc_soln" for this test case you would run:
%
%           match = checkImage('testFunc', 30, true, {'cats', 'dogs'})