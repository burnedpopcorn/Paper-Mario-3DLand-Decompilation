var i;
if (!global.Gamepad)
{
    if (keyboard_key == vk_return || keyboard_key == vk_escape || (keyboard_key >= vk_f1 && keyboard_key <= vk_f12) || keyboard_key == vk_left || keyboard_key == vk_right || keyboard_key == vk_up || keyboard_key == vk_down)
        return 0;
    for (i = 0; i < 4; i += 1)
    {
        if (keyboard_key == blacklist[i])
            return 0;
    }
    return 1;
}
