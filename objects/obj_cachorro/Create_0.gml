dano = global.lista_upgrades[1] * 3;

cooldown = 120;

atacando = function()
{
    //Se nao tem inimigo, eu nao faco nada
    if (!instance_exists(obj_inimigos_pai)) return;
    cooldown--;
    
    if (cooldown <= 0)
    {
        //Achando o inimigo mais proximo
        var _inimigo = instance_nearest(x, y, obj_inimigos_pai);
        
        if (instance_exists(_inimigo))
        {
            _inimigo.tomando_dano(dano, spr_mordida);
            
            audio_play_sound(snd_cachorro, 1, 0, , , random_range(0.7, 1.2));
            cooldown = 120;
        }
    }
}