% EncryptImage.m
% A function that encrypts a grayscale image to give a cipher cell array of
% 2 x 2 patterns which are determined by a key cell array of 2 x 2 patterns
%
% Inputs:   A 2D array of uint8 values (grayscale image) to encrypt
%
%           A 2D cell array of 2 x 2 patterns to act as a key array
%
% Output:   A 2D cell array of 2 x 2 patterns to act as a cipher array
%
% Author: Jonathan Lloyd

function cipherArray = EncryptImage(image, keyArray)

% Find the number of rows and columns of the image
[rows,cols] = size(image);

% Loop through every pixel of the image
for i = 1:rows
    for j = 1:cols
        % Check if the pixel is dark (can be represented by a black pixel)
        isDark = (image(i,j) < 128);
        
        % If the pixel is dark, make the corresponding element of the
        % cipher array the complementary 2 x 2 pattern of the corresponding
        % key element
        if isDark
            cipherArray{i,j} = ImageComplement(keyArray{i,j});
        
        % If the pixel is light, make the corresponding element of the
        % cipher array the same 2 x 2 pattern as the corresponding key
        % element
        else
            cipherArray{i,j} = keyArray{i,j};
        end
    end
end

end