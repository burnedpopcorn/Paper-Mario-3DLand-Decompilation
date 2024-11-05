var list, detected, ID, i;
list = ds_list_create()
detected = 0
while place_meeting(argument0, argument1, obj_wall)
{
    ID = instance_place(argument0, argument1, obj_wall)
    if (z < ID.z && (z + height) > ID.bottom)
        detected = 1
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
