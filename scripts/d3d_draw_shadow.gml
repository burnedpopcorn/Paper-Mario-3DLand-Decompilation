if (argument2 > -120)
{
    draw_set_color(global.Shadowcolor)
    if argument6
        d3d_draw_floor(argument0, argument1, argument2, argument3, argument4, argument5, background_get_texture(tex_shadow), 1, 1)
    else
        d3d_draw_floor(argument0, argument1, argument2, argument3, argument4, argument5, -1, 1, 1)
}
draw_set_color(c_white)
