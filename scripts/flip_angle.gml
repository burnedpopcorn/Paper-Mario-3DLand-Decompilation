var old_angle, axis;
old_angle = argument0 % 360
axis = argument1
return ((2 * axis - old_angle + 360) % 360);
