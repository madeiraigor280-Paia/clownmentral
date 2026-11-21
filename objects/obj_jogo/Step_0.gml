if (room == rm_select)
{
    if (keyboard_check_released(vk_down))
    {
        room = rm_upgrade;
        global.vida_atual = global.vida_max;
    }
}

if (room == rm_upgrade)
{
     if (keyboard_check_released(vk_up))
    {
        room = rm_select;
    }
}

//Se o dinheiro for diferente do dinheiro global, eu me atualizo
if (dinheiro != global.dinheiro)
{
    tween(id, "dinheiro", global.dinheiro, tween_animation.quad_out, 30)
}