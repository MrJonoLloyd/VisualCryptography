% EmbedImage.m
% A function that embeds a binary image into a colour image. For the black
% pixels of the binary image, the RGB values of the colour image's pixels
% sums to an even number. For the white pixels of the binary image, the RGB
% values of the colour image's pixels sums to an odd number.
% The colour image needs to be the same size as or bigger than the binary
% image
%
% Inputs:   A 2D array of uint8 values of a binary image
%           
%           A 3D array of uint8 values of a colour image that the binary
%           image will be embedded into
%
% Output:   A 3D array of uint8 values (colour image) that contains a
%           hidden binary image
%
% Author:   Jonathan Lloyd

function hidden = EmbedImage(binary,colour)
% Find the number of rows and columns of the colour image
[cRows,cCols] = size(colour);

% Find the number of rows and columns of the binary image
[bRows,bCols] = size(binary);


% Loop through each pixel of the binary image
for i = 1:bRows
    for j = 1:bCols
        % Check if the pixel of the binary image is black
        isBlack = (binary(i,j) == 0);
        
        % Sum the RGB values (addition can exceed 255) of the corresponding
        % colour pixel
        rgbSum = double(colour(i,j,1)) + double(colour(i,j,2)) + double(colour(i,j,3));
        
        % Check if the corresponding colour pixel's RGB sums to an even 
        % number
        isRgbEven = (mod(rgbSum,2) == 0);
        
        % If the binary pixel is black and the colour pixel's RGB total is
        % odd, make the colour pixel's RGB total even
        if isBlack && ~isRgbEven
            colour(i,j,1) = AlterByOne(colour(i,j,1));
            
        % Elseif the binary pixel is white and the colour pixel's RGB total
        % is even, make the colour pixel's RGB total odd
        elseif ~isBlack && isRgbEven
            colour(i,j,1) = AlterByOne(colour(i,j,1));
        end
    end
end

% Loop through every pixel of the colour image
for i = 1:cRows
    for j = 1:cCols
        % Set the colour pixel as the output, whether it has been altered
        % or not
        hidden(i,j,1:3) = colour(i,j,1:3);
    end
end

end