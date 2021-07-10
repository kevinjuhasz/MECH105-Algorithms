% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything

radius_cyl = 25/2;
height_cyl = 19;
volume_cyl_filled = pi*radius_cyl^2*height_cyl;
radius_cone = 46/2;
height_cone = 30.667;
volume_small_cone = pi*12.5^2*16.667/3;
volume_cone_filled = pi*radius_cone^2*height_cone/3;

% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

volume_cyl_varying = pi*radius_cyl^2*h
volume_cone_varying = pi/5.331 * (h-2.333)^3 - volume_small_cone

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
if (h >= 0) && (h <= 19)
v = volume_cyl_varying;
elseif (h > 19) && (h <= 33)
v = volume_cyl_filled + volume_cone_varying;
else
v = volume_cyl_filled + volume_cone_filled - volume_small_cone;
end