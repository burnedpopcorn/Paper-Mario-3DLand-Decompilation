h = argument0;
xx = x + 16;
yy = y + 16;
top = d3d_model_create();
d3d_model_primitive_begin(top, 6);
d3d_model_vertex_texture(top, xx, yy, z, 0.5, 0.5);

for (i = 0; i <= 6; i += 1)
    d3d_model_vertex_texture(top, xx + lengthdir_x(16, i * 60), yy + lengthdir_y(16, i * 60), z, 0.5 + lengthdir_x(0.5, i * 60), 0.5 + lengthdir_y(0.5, i * 60));

d3d_model_primitive_end(top);

for (i = 0; i < 6; i += 1)
{
    tex_x = (0.66 * (i == 0 || i == 5)) + (0.33 * (i == 1 || i == 4));
    sidestop[i] = d3d_model_create();
    d3d_model_primitive_begin(sidestop[i], 5);
    d3d_model_vertex_texture(sidestop[i], xx + lengthdir_x(16, i * 60), yy + lengthdir_y(16, i * 60), z, tex_x, 0);
    d3d_model_vertex_texture(sidestop[i], xx + lengthdir_x(16, (i * 60) + 60), yy + lengthdir_y(16, (i * 60) + 60), z, tex_x + 0.33, 0);
    d3d_model_vertex_texture(sidestop[i], xx + lengthdir_x(16, i * 60), yy + lengthdir_y(16, i * 60), z - 8, tex_x, 0.5);
    d3d_model_vertex_texture(sidestop[i], xx + lengthdir_x(16, (i * 60) + 60), yy + lengthdir_y(16, (i * 60) + 60), z - 8, tex_x + 0.33, 0.5);
    d3d_model_primitive_end(sidestop[i]);
}

for (i = 0; i < 6; i += 1)
{
    tex_x = (0.66 * (i == 0 || i == 5)) + (0.33 * (i == 1 || i == 4));
    sidesmid[i] = d3d_model_create();
    d3d_model_primitive_begin(sidesmid[i], 5);
    d3d_model_vertex_texture(sidesmid[i], xx + lengthdir_x(14, i * 60), yy + lengthdir_y(14, i * 60), z - 8, tex_x, 0.5);
    d3d_model_vertex_texture(sidesmid[i], xx + lengthdir_x(14, (i * 60) + 60), yy + lengthdir_y(14, (i * 60) + 60), z - 8, tex_x + 0.33, 0.5);
    d3d_model_vertex_texture(sidesmid[i], xx + lengthdir_x(14, i * 60), yy + lengthdir_y(14, i * 60), z - 14, tex_x, 1);
    d3d_model_vertex_texture(sidesmid[i], xx + lengthdir_x(14, (i * 60) + 60), yy + lengthdir_y(14, (i * 60) + 60), z - 14, tex_x + 0.33, 1);
    d3d_model_primitive_end(sidesmid[i]);
}

for (i = 0; i < 6; i += 1)
{
    tex_x = (0.66 * (i == 0 || i == 5)) + (0.33 * (i == 1 || i == 4));
    sidesbottom[i] = d3d_model_create();
    d3d_model_primitive_begin(sidesbottom[i], 5);
    d3d_model_vertex_texture(sidesbottom[i], xx + lengthdir_x(14, i * 60), yy + lengthdir_y(14, i * 60), z - 14, tex_x, 0);
    d3d_model_vertex_texture(sidesbottom[i], xx + lengthdir_x(14, (i * 60) + 60), yy + lengthdir_y(14, (i * 60) + 60), z - 14, tex_x + 0.33, 0);
    d3d_model_vertex_texture(sidesbottom[i], xx + lengthdir_x(14, i * 60), yy + lengthdir_y(14, i * 60), z - height, tex_x, 0.5);
    d3d_model_vertex_texture(sidesbottom[i], xx + lengthdir_x(14, (i * 60) + 60), yy + lengthdir_y(14, (i * 60) + 60), z - height, tex_x + 0.33, 0.5);
    d3d_model_primitive_end(sidesbottom[i]);
}
