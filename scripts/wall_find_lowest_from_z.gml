var zlist, idlist, t, i, tgrid, counter;
zlist = ds_list_create()
idlist = ds_list_create()
ds_list_add(zlist, 512)
ds_list_add(idlist, -1)
while place_meeting(argument0, argument1, obj_wall)
{
    t = instance_place(argument0, argument1, obj_wall)
    with (t)
    {
        ds_list_add(zlist, bottom)
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
counter = 0
do
{
    if (counter >= ds_grid_height(tgrid))
    {
        ds_list_destroy(zlist)
        ds_list_destroy(idlist)
        ds_grid_destroy(tgrid)
        return -1;
    }
    t = ds_grid_get(tgrid, 1, counter)
    counter += 1
} until (t.z >= argument2);
ds_list_destroy(zlist)
ds_list_destroy(idlist)
ds_grid_destroy(tgrid)
return t;
