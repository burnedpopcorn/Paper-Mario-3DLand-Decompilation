var tx, ty, tzz, tz, tz2, ID, doit, ID2;
tx = x
ty = y
tzz = z
tz = -1024
tz2 = -1024
ID = instance_find_top(x, y, par_fence)
doit = 1
if ID
{
    if (z >= ID.z)
    {
        tz = ID.z
        doit = 0
    }
}
if doit
{
    ID = instance_find_top(x, y, par_floorwalls)
    if ID
    {
        if (z >= ID.z)
            tz = ID.z
    }
    ID2 = instance_find_top(x, y, obj_cb_platform_0)
    if (!ID2)
        ID2 = instance_find_top(x, y, obj_grid_0)
    if ID2
    {
        if (z >= ID2.z)
        {
            if (!ID)
                tz = ID2.z
            else if (ID2.z > ID.z)
                tz = ID2.z
        }
    }
}
ID = instance_find_top(x, y, par_block)
if ID
{
    if ((ID.z + 16) > zfloor && (ID.z + 16) <= z)
        tz = ID.z + 16
}
x = argument0
y = argument1
z = 10000
ID = instance_find_top(x, y, par_fence)
doit = 1
if ID
{
    if (z >= ID.z)
    {
        tz2 = ID.z
        doit = 0
    }
}
if doit
{
    ID = instance_find_top(x, y, par_floorwalls)
    if ID
    {
        if (z >= ID.z)
            tz2 = ID.z
    }
    ID2 = instance_find_top(x, y, obj_cb_platform_0)
    if (!ID2)
        ID2 = instance_find_top(x, y, obj_grid_0)
    if ID2
    {
        if (z >= ID2.z)
        {
            if (!ID)
                tz2 = ID2.z
            else if (ID2.z > ID.z)
                tz2 = ID2.z
        }
    }
}
ID = instance_find_top(x, y, par_block)
if ID
{
    if ((ID.z + 16) > zfloor && (ID.z + 16) <= z)
        tz2 = ID.z + 16
}
x = tx
y = ty
z = tzz
if (tz2 < tz)
    return 1;
return 0;
