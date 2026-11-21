//Avancando se eu ainda nao cheguei no player ?
if (y < 300)
{
    tween(id, "y", y + distancia, tween_animation.circ_inout, 10);
}
else {
	//Aplicando o dano no player
    if (instance_exists(obj_player))
    {
        obj_player.tomo_dano(dano);
    }
    
    tween(id, "y", ystart, tween_animation.circ_inout, 30);
}



alarm[0] = random_range(espera, espera * 2);