% DecryptImage.m
% A function that decrypts a cipher image using the key image
%
% Inputs:   1) A 2D array of uint8 values containing black and white cipher
%           image
%
%           2) A 2D array of uint8 values containing the black and white
%           key image
%
% Outputs:  A 2D array of uint8 values containing the decrypted image
%
% Author:   Jonathan Lloyd

function decryptedImage = DecryptImage(cipherImage,keyImage)

% Find the number of rows and columns of the key (and the cipher)
[rows,cols] = size(keyImage);

% Loop through every pixel of the key / cipher
for i = 1:rows
    for j = 1:cols
        % If the pixel of the cipher and key are the same, set the pixel of
        % the decrypted image to white
        if cipherImage(i,j) == keyImage(i,j)
            decryptedImage(i,j) = uint8(255);
            
        % If the pixel of the cipher and key are different, set the pixel 
        % of the decrypted image to black
        else
            decryptedImage(i,j) = uint8(0);
        end
    end
end

end
