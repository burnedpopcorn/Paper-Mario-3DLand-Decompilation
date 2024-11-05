var tile, xx, yy, bg, hsize, vsize, model;
tile = tile_layer_find(argument4, argument0, argument1)
if tile
{
    xx = tile_get_left(tile)
    yy = tile_get_top(tile)
    bg = tile_get_background(tile)
    hsize = background_get_width(bg)
    vsize = background_get_height(bg)
    model = d3d_model_create()
    d3d_model_primitive_begin(model, 4)
    d3d_model_vertex_normal_texture(model, 0, 0, 0, 0, 0, 1, ((xx + 0.2) / hsize), ((yy + 0.2) / vsize))
    d3d_model_vertex_normal_texture(model, argument2, 0, 0, 0, 0, 1, ((xx - 0.2 + argument2) / hsize), ((yy + 0.2) / vsize))
    d3d_model_vertex_normal_texture(model, 0, argument3, 0, 0, 0, 1, ((xx + 0.2) / hsize), ((yy - 0.2 + argument3) / vsize))
    d3d_model_vertex_normal_texture(model, argument2, 0, 0, 0, 0, 1, ((xx - 0.2 + argument2) / hsize), ((yy + 0.2) / vsize))
    d3d_model_vertex_normal_texture(model, 0, argument3, 0, 0, 0, 1, ((xx + 0.2) / hsize), ((yy - 0.2 + argument3) / vsize))
    d3d_model_vertex_normal_texture(model, argument2, argument3, 0, 0, 0, 1, ((xx - 0.2 + argument2) / hsize), ((yy - 0.2 + argument3) / vsize))
    d3d_model_primitive_end(model)
    return model;
}
return -4;
