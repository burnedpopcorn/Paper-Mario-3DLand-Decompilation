var zlist, idlist, t, i, tgrid;
zlist = ds_list_create()
idlist = ds_list_create()
ds_list_add(zlist, 512)
ds_list_add(idlist, -1)
while place_meeting(argument0, argument1, argument2)
{
    t = instance_place(argument0, argument1, argument2)
    with (t)
    {
        ds_list_add(zlist, z)
        ds_list_add(idlist, id)
        x += room_width
    }
}
for (i = 1; i < ds_list_size(idlist); i += 1)
{
    with (ds_list_find_value(idlist, i))
        x -= room_width
}
tgrid = ds_grid_create(2, ds_list_size(idlist))
for (i = 0; i < ds_list_size(zlist); i += 1)
{
    ds_grid_set(tgrid, 0, i, ds_list_find_value(zlist, i))
    ds_grid_set(tgrid, 1, i, ds_list_find_value(idlist, i))
}
ds_grid_sort(tgrid, 0, 1)
t = ds_grid_get(tgrid, 1, 0)
ds_list_destroy(zlist)
ds_list_destroy(idlist)
ds_grid_destroy(tgrid)
return t;
