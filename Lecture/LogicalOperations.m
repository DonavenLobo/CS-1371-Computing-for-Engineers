%To get a  logical true you have to tye in 'True'
%% Logical Operators
%
% The three logical operators:
% Basis - Logical value In --> Loical value Out
%
%% AND - &
% True & True --> True
% True & Fale --> False
% False & True --> False
% False & False --> False

% **Short Circuit - If you hit a fasle, the assignment is immediately false
%% OR - |
% True | True --> True
% True | False --> True
% False | True --> True
% False | False --> False

% **Short Circuit - If you hit a true, the assignment is immediately true
%% NOT - ~
% ~True --> False
% ~False --> True

%% Equality Operators
%
% Greater Than = '>'
% Greater Than or Equal to = '>='
% Less Than = '<'
% Less Than or Equal to = '<='
% Equal to = '=='
% Not equal to = '~='
%%
%% To see if any of a vector are true

% any() - Allows us to see if there are any 'true's in a given vector
% e.g.
% log = any([true,false,false]) --> true

%% To see if all entries of a vector are true

% all() - Allows us to see if all the entries of a vector are 'true'
% e.g.
% log = all([true,false,false]) --> false