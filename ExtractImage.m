% ExtractImage.m
% A function that extracts a hidden binary image that has been embedded
% within a colour image. Where the sum of a pixel's RGB values is even, the
% hidden image has a black pixel. Where the sum of a pixel's RGB values is 
% odd, the hidden image has a white pixel
% 
% Inputs:   A 3D array of uint8 values (colour image) that contains a
%           hidden binary image
%
% Outputs:  A 2D array of uint8 values of the binary image that was hidden
%           inside the colour image
%
% Author:   Jonathan Lloyd


function original = ExtractImage(hidden)

% Find the number of rows and columns of the colour image
[rows,cols,~] = size(hidden);

% Loop through each pixel of the colour image
for i = 1:rows
    for j = 1:cols
        % Sum the RGB values (addition can exceed 255)
        rgbSum = double(hidden(i,j,1)) + double(hidden(i,j,2)) + double(hidden(i,j,3));
        % Check if the pixel's RGB sums to an even number in the colour
        % image
        isRgbEven = mod(rgbSum,2) == 0;
        
        % If the pixel's RGB total is even, set the pixel to black
        if isRgbEven
            original(i,j) = uint8(0);
            
        % If the pixel's RGB total is odd, set the pixel to white
        else
            original(i,j) = uint8(255);
        end
    end
end

end