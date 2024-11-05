var ID;
if (argument0 == argument1)
    return 1;
ID = object_get_parent(argument0)
if (ID != argument1 && ID != -100)
    return is_ancestor(ID, argument0);
else if (ID == argument1)
    return 1;
else if (ID == -100)
    return 0;
