var xx, yy, ID, ID2, ID3, ID4, ID5, tID, ID6;
xx = round(x)
yy = round(y)
ID = collision_point_top((xx - 8), (yy - 8), par_floor, 0, 0)
ID2 = collision_point_top((xx + 7), (yy - 8), par_floor, 0, 0)
ID3 = collision_point_top((xx - 8), (yy + 7), par_floor, 0, 0)
ID4 = collision_point_top((xx + 7), (yy + 7), par_floor, 0, 0)
ID5 = instance_find_top(xx, yy, par_floorwalls)
if place_meeting(x, y, obj_dig_platform)
{
    tID = instance_place(x, y, obj_dig_platform)
    if (ID == tID && ID2 == tID && ID3 == tID && ID4 == tID)
        return 1;
    stone = 0
    return 0;
}
ID6 = instance_find_top_with_bottom(xx, yy, par_floor_floating)
if ID6
{
    if (abs(ID6.z - ID6.bottom) < 32)
    {
        stone = 0
        return 0;
    }
}
if (ID && ID2 && ID3 && ID4 && ID5 && (!(place_meeting(xx, yy, obj_flipswitch))) && (!(place_meeting(xx, yy, obj_spiketrap))) && (!(place_meeting(xx, yy, obj_bridge_switch))))
{
    if (is_ancestor(ID.object_index, obj_floor_0) && is_ancestor(ID2.object_index, obj_floor_0) && is_ancestor(ID3.object_index, obj_floor_0) && is_ancestor(ID4.object_index, obj_floor_0) && is_ancestor(ID5.object_index, obj_floor_0))
    {
        if (ID.z == ID2.z && ID.z == ID3.z && ID.z == ID4.z && ID.z == ID5.z && ID.z == z)
            return 1;
    }
}
stone = 0
return 0;
