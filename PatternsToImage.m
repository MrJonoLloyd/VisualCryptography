% PatternToImage.m
% A function that converts a 2D cell array of 2 x 2 uint8 patterns to a 2D
% uint8 array which can be treated as an image
%
% Input:    A 2D m x n cell array of 2 x 2 uint8 patterns
%
% Output:   A 2m x 2n array of uint8 values that makes a grayscale image
%           comprised of the patterns in the corresponding positions of 
%           the patterns in the input cell array
%
% Author:   Jonathan Lloyd

function keyImage = PatternsToImage(key)

% Find the number of rows and columns of the cell array
[rows,cols] = size(key);

% Loop through every element of the cell array
for i = 1:rows
    for j = 1:cols
        % Paste the 2 x 2 pattern into the 2D array / image
        keyImage(2*i-1:2*i,2*j-1:2*j) = key{i,j};
    end
end

end