dano = global.lista_upgrades[2] * 2;

cooldown = 150;


atacando = function()
{
    cooldown--;
    
    
    if (cooldown <= 0)
    {
        //Se nao tenho inimigos eu saio
        if (!instance_exists(obj_inimigos_pai))
        {
            return;
        }else 
        {
        	var _dano = dano
            with(obj_inimigos_pai)
            {
            
             //Eu atacando todos
             tomando_dano(other.dano, spr_arranhao);
             
             
             
            }
            cooldown = 150;
            audio_play_sound(snd_gato, 1, 0, , , random_range(0.7, 1.2));
        }
    }
        
        
}


