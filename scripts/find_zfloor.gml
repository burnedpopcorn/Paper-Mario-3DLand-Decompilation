var list, ID, ID2, doit, i;
list = ds_list_create()
zfloor = -1024
ID = instance_find_top(x, y, par_fence)
if ID
{
    if (zprev >= ID.z)
        zfloor = ID.z
}
while place_meeting(x, y, par_floor)
{
    ID2 = instance_find_top(x, y, par_floor)
    if (ID2.z <= zprev)
    {
        doit = 0
        if (!ID)
            doit = 1
        else if (ID2.z > ID.z)
            doit = 1
        if doit
        {
            zfloor = ID2.z
            break
        }
        else
        {
            ID2.x += 2000
            ds_list_add(list, ID2)
            continue
        }
    }
    else
    {
        ID2.x += 2000
        ds_list_add(list, ID2)
        continue
    }
}
for (i = 0; i < ds_list_size(list); i += 1)
{
    with (ds_list_find_value(list, i))
        x -= 2000
}
ds_list_destroy(list)
if place_meeting(x, y, obj_elevator_up)
    zfloor += max(0, (instance_place(x, y, obj_elevator_up)).zspeed)
ID = instance_find_top_from_z(x, y, z, par_block)
if ID
{
    if ((ID.z + ID.height) > zfloor && (ID.z + ID.height) <= zprev)
        zfloor = ID.z + ID.height
}
