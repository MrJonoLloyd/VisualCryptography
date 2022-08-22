% ImageComplement.m
% A function that produces the complement image, i.e. turns black pixels 
% to white and white pixels to black. Intended for greyscale images
%
% Inputs:   A 2D array of uint8 values
%
% Outputs:  A 2D array of uint8 values which is the complement of the input
%           array
%
% Author:   Jonathan Lloyd

function complement = ImageComplement(image)

% Find the number of rows and columns of the 2D array
[rows,cols] = size(image);

% Loop through every value of the 2D array
for i = 1:rows
    for j = 1:cols
        % Invert the tone
        % Store the value in the output 2D array in the correct position
        complement(i,j) = 255 - image(i,j);
    end
end
end