var col, xx, yy, txt, i, j;
col = draw_get_color()
xx = argument0
yy = argument1
txt = argument2
draw_set_color(c_black)
for (i = 0; i < argument3; i += 1)
{
    for (j = 0; j < 360; j += (45 / (i + 1)))
        draw_text((xx + (lengthdir_x(i, j))), (yy + (lengthdir_y(i, j))), txt)
}
draw_set_color(col)
draw_text(xx, yy, txt)
