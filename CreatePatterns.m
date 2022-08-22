% CreatePatterns.m
% A function that creates a 1D cell array containing six special 2x2
% patterns of uint8 values, which are used for key generation
%
% Inputs: None
%
% Outputs:  A single 1 x 6 cell array of 2 x 2 patterns (all uint8)
%           Patterns:   1) bottom 2 black
%                       2) top 2 black
%                       3) left 2 black
%                       4) right 2 black
%                       5) leading diagonal black
%                       6) off diagonal black
%
% Author:   Jonathan Lloyd

function [patterns] = CreatePatterns()

patterns{1} = uint8([255 255; 0 0]);        % Pattern 1: bottom 2 black
patterns{2} = ImageComplement(patterns{1}); % Pattern 2: top 2 black
patterns{3} = uint8([0 255; 0 255]);        % Pattern 3: left 2 black
patterns{4} = ImageComplement(patterns{3}); % Pattern 4: right 2 black
patterns{5} = uint8([0 255; 255 0]);        % Pattern 5: leading diagonal black
patterns{6} = ImageComplement(patterns{5}); % Pattern 6: off diagonal black

end