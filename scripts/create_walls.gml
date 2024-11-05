var ID, ID2;
if (!(place_meeting((x - 32), y, par_floorwalls)))
{
    ID = instance_create(x, y, obj_wall_mole)
    ID.dir = 180
    if global.Overworld
    {
        ID.z = z
        ID.bottom = bottom
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
    else
    {
        ID.x -= 32
        ID.z = 512
        ID.bottom = z
        ID.dir = 0
        ID.culling = 1
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
if (!(place_meeting((x + 32), y, par_floorwalls)))
{
    ID = instance_create(x, y, obj_wall_mole)
    ID.dir = 0
    if global.Overworld
    {
        ID.z = z
        ID.bottom = bottom
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
    else
    {
        ID.x += 32
        ID.z = 512
        ID.bottom = z
        ID.dir = 180
        ID.culling = 1
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
if (!(place_meeting(x, (y - 32), par_floorwalls)))
{
    ID = instance_create(x, y, obj_wall_mole)
    ID.dir = 90
    if global.Overworld
    {
        ID.z = z
        ID.bottom = bottom
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
    else
    {
        ID.y -= 32
        ID.z = 512
        ID.bottom = z
        ID.dir = 270
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
if (!(place_meeting(x, (y + 32), par_floorwalls)))
{
    ID = instance_create(x, y, obj_wall_mole)
    ID.dir = 270
    if global.Overworld
    {
        ID.z = z
        ID.bottom = bottom
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
    else
    {
        ID.y += 32
        ID.z = 512
        ID.bottom = z
        ID.dir = -1
        ID.culling = 1
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
ID2 = instance_place((x - 32), y, par_floorwalls)
if ID2
{
    if (ID2.z > z || (global.World == 10 && place_meeting((x - 32), y, obj_bottomsetter) && (!(place_meeting(x, y, obj_bottomsetter)))))
    {
        ID = instance_create((x - 32), y, obj_wall_mole)
        ID.dir = 0
        ID.z = (instance_place((x - 32), y, par_floorwalls)).z
        ID.bottom = z
        if (is_ancestor(object_index, par_floor_floating) && (!(is_ancestor(ID2.object_index, par_floor_floating))))
            ID.bottom = -128
        ID.culling = (!global.Overworld)
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
ID2 = instance_place((x + 32), y, par_floorwalls)
if ID2
{
    if (ID2.z > z || (global.World == 10 && place_meeting((x + 32), y, obj_bottomsetter) && (!(place_meeting(x, y, obj_bottomsetter)))))
    {
        ID = instance_create((x + 32), y, obj_wall_mole)
        ID.dir = 180
        ID.z = (instance_place((x + 32), y, par_floorwalls)).z
        ID.bottom = z
        if (is_ancestor(object_index, par_floor_floating) && (!(is_ancestor(ID2.object_index, par_floor_floating))))
            ID.bottom = -128
        ID.culling = (!global.Overworld)
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
ID2 = instance_place(x, (y - 32), par_floorwalls)
if ID2
{
    if (ID2.z > z || (global.World == 10 && place_meeting(x, (y - 32), obj_bottomsetter) && (!(place_meeting(x, y, obj_bottomsetter)))))
    {
        ID = instance_create(x, (y - 32), obj_wall_mole)
        ID.dir = 270
        ID.z = (instance_place(x, (y - 32), par_floorwalls)).z
        ID.bottom = z
        if (is_ancestor(object_index, par_floor_floating) && (!(is_ancestor(ID2.object_index, par_floor_floating))))
            ID.bottom = -128
        ID.culling = (!global.Overworld)
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
ID2 = instance_place(x, (y + 32), par_floorwalls)
if ID2
{
    if (ID2.z > z || (global.World == 10 && place_meeting(x, (y + 32), obj_bottomsetter) && (!(place_meeting(x, y, obj_bottomsetter)))))
    {
        ID = instance_create(x, (y + 32), obj_wall_mole)
        ID.dir = 90
        ID.z = (instance_place(x, (y + 32), par_floorwalls)).z
        ID.bottom = z
        if (is_ancestor(object_index, par_floor_floating) && (!(is_ancestor(ID2.object_index, par_floor_floating))))
            ID.bottom = -128
        ID.culling = (!global.Overworld)
        ID.setbottom = (!(place_meeting(x, y, obj_nobottomsetter)))
    }
}
