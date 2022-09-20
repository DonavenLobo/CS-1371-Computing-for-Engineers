%% Vectors in MATLAB

% 3 ways to create a vector: 1. Direct Entry; 2. Range (Start:Step:Stop);
% 3. Use funation Linspace

%% Direct Entry example -->

% A = [1, 5, 7, 9, 10]

% A2 = [5, 10, 15, 20]

%% Range Operator example --> Range = Start:Step:Stop

% B = 1:2:7

% B2 = 1:2:8

% Stopping value doesn't necissarily have to be in the vector. Stop value
% just tells the computer what the Max/Min value the vector can have.

% B6 = 1:1000000  "Start:Stop"

%% Linspace (start, end, how many items) - Splits entries up evenly

% C = linspace(1,10,4)
% C2 = linspace(24,39,15)
%%
%% Other Ways

% Zero
% F = zeros(1,5)
% 
% Ones
% F = ones(1,5)

% Random
% F = rand() --> Generates random number between 0 and 1
% G = rand (1,5) --> Generates random numbers for a Vector of size 1 x 5

%% Size and Length
%
% To find length of a vector (How many columns it has) you use length
% function

% len = length(A)

% To find size of a vector (How many rows it has) you use the size function

% siz = size(A)

%% Math with vectors

% Vector + or - a Scalar --> element-by-element operation

% Vector + or - a Vector(of same length)  --> each element operates with
% corresponding indicies

% Vector + or - a Vector(of different length) --> ERROR: Matrix dimensions
% must agree

% Scalar multiplication and division --> ".*" - Mult. ; "./" - Division
% The dot tells MATLAB that we are doing a scalar operation
% e.g. 
% A = [2, 5, 7, 10]
% B = [3, 9, 11, 15]
% D = A .* 5
% E = A ./ B

% To flip the order of a vector --> AReverse = A(length(A):-1:1) or A(end:-1:1)
% A(end) --> gives you the last value stored in the vector

%% Zero Padding
%
% E = [1,2,3,4,5]
%
% E(15) = 20 --> This increases the size of the vector, its 'zero-pads' to
% compensate for the new assignment

%% Adding and removing elements of vectors
% I = [2,4,6]
% H = [5,6,7,8,9]
%
% F(a) = [] --> This removes a value stored in index 'a'
% K = [I,H] --> Concatonates both the vectors togther

%% Vectors of Charectors

% A string is a vector of charectors

% strfind() --> returns the index of where a string is another string






