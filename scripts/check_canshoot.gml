if instance_exists(obj_mario)
{
    if (abs(x - obj_mario.x) < 160 && y < (obj_mario.y + 64))
        return 1;
    return 0;
}
return 0;
