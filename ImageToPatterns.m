% ImageToPatterns.m
% A function the converts a 2D uint8 array (grayscale image) into a 2D cell
% array of 2 x 2 uint8 patterns so that we can work with the patterns
%
% Input:   A 2D array of uint8 values containing an image made up of lots
%           of black and white pixels
%
% Output:  A 2D cell array of 2 x 2 patterns extracted from the image.
%
% Author:   Jonathan Lloyd

function patterns = ImageToPatterns(image)

% Find the number of rows and columns of the image
[rows,cols] = size(image);

% Loop through every set of 2 x 2 pattern
for i = 1:(rows / 2)
    for j = 1:(cols / 2)
        % Put every 2 x 2 pattern in a new element of the cell array
        patterns{i,j} = image(2*i-1:2*i,2*j-1:2*j);
    end
end

end