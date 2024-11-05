var _temp_local_var_1, _temp_local_var_3;
_temp_local_var_1 = 512
_temp_local_var_3 = ((!global.Overworld) && global.World != 9)
d3d_set_fog(argument0, background_color, (256 - 128 * ((!global.Overworld) && global.World != 9)), (1024 - 256 * 128))
if (global.World == 12)
    d3d_set_fog(argument0, background_color, 256, 896)
