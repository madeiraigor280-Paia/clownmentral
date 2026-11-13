if (room == rm_select)
{
    if (keyboard_check_released(vk_down))
    {
        room = rm_upgrade;
    }
}

if (room == rm_upgrade)
{
     if (keyboard_check_released(vk_up))
    {
        room = rm_select;
    }
}