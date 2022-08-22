% AlterByOne.m
% A function that alters a uint8 value between 0 and 255 by 1
% Adds 1 to the value, or subtracts it by one if the value is 255
%
% Inputs:   An integer between 0 and 255 (inclusive)
%
% Outputs:  A uint8 value that is different by 1
%
% Author:   Jonathan Lloyd

function [altValue] = AlterByOne(value)

% if the value is 255, subtract 1
if value == 255
    value = value - 1;
    
% otherwise, add 1 to the value
else
    value = value + 1;
    
end

% convert the value to an uint8
altValue = uint8(value);

end