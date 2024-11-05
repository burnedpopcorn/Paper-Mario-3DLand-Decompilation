var gp_num, i;
if (!global.Gamepad)
    return keyboard_check_released(argument0);
else
{
    gp_num = gamepad_get_device_count()
    for (i = 0; i < gp_num; i += 1)
    {
        if gamepad_button_check_released(i, argument0)
            return 1;
    }
    return 0;
}
