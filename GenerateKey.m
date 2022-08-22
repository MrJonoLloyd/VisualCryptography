% GenerateKey.m
% A function that assembles a 2D cell array of 2 x 2 uint8 patterns to act
% as a key. Each pattern comes from a 1D cell array of 6 2 x 2 patterns and
% is chosen based off a random integer between 1 and 6 inclusive in the
% corresponding position of a 2D array
%
% Inputs:   A 2D m x n array of random integer values between 1 and 6
%           inclusive
%
%           A 1 x 6 1D cell array containing 6 2 x 2 uint8 patterns 
%
% Outputs:  A 2D m x n cell array of patterns which are randomly selected
%           from a set of 6 2 x 2 uint8 patterns
%
% Author:   Jonathan Lloyd

function key = GenerateKey(randInt, patterns)

% Find the number of rows and columns of the 2D array
[rows,cols] = size(randInt);

% Loop through every value of the 2D array
for i = 1:rows
    for j = 1:cols
        % Obtain the pattern number (1 to 6 inclusive) from the 2D array 
        % of random integers
        patNum = randInt(i,j);
        
        % Put the associated 2 x 2 pattern into the 2D cell array
        key{i,j} = patterns{patNum};
    end
end

end