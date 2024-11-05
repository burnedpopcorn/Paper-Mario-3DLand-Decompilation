var list, detected, ID, ID2, i;
if (place_meeting(argument0, argument1, obj_spiketrap) || place_meeting(argument0, argument1, obj_flipswitch) || place_meeting(argument0, argument1, obj_stairs))
    return 1;
list = ds_list_create()
detected = 0
while place_meeting(argument0, argument1, obj_wall_mole)
{
    ID = instance_place(argument0, argument1, obj_wall_mole)
    if (z < ID.z && (z + height) > ID.bottom)
        detected = 1
    if place_meeting(argument0, argument1, par_floor_floating)
    {
        ID2 = instance_find_top_with_bottom(argument0, argument1, par_floor_floating)
        if (abs(ID2.z - ID2.bottom) < 32)
            detected = 1
    }
    ds_list_add(list, ID)
    ID.x += 10000
}
for (i = 0; i < ds_list_size(list); i += 1)
{
    with (ds_list_find_value(list, i))
        x -= 10000
}
ds_list_destroy(list)
return detected;
