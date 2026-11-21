valor_cor = 0;

//Aumento a vida para caso for 0, virar 1, logo 1 * 0.5 fica 5.
mult = 0.5;
//vida = 10 * (global.lista_upgrades[3] + 1 * mult)
global.vida_max = 20 * (global.lista_upgrades[3] * mult);
global.vida_atual = global.vida_max;


//Criando os animais
if (global.lista_upgrades[2] >= 1)
    {
         
        if (instance_exists(obj_player))
        {
            instance_create_layer(obj_player.x + 40, obj_player.y, layer, obj_gato);
            
           
        }
    }

if (global.lista_upgrades[1] >= 1)
    {
        if (instance_exists(obj_player))
        {
            instance_create_layer(obj_player.x - 40, obj_player.y, layer, obj_cachorro);
            
           
        } 
    }


dano = false;

//Metodo de dano
tomo_dano = function(_dano)
{
    
        //Tiro um de vida
       //vida -= _dano;
        global.vida_atual -= _dano;
        //Crio o efeito e audio
        var _minha_part = instance_create_layer(x + 5, y + 3, "Efeitos", obj_dano);
        
    
         //Criando o mostra dano
        var _cria_dano = instance_create_layer(x, y, layer, obj_efeito_dano);
        _cria_dano.dano = _dano;
    
        
        //Alterando a minha cor
       valor_cor = 1;
    
    //Fazendo a minha cor voltar ao original
    tween(id, "valor_cor", 0, tween_animation.back_in, 20);
    
    //Levando dano
    var _pitch = random_range(1, 2)
    audio_play_sound(snd_dano, 1, 0, , , _pitch);
    
    
    
    //Voltando para o comeco se eu morri
    if (global.vida_atual <= 0)
    {
        //Voltando para o comeco
        room_goto(rm_select);
        
        //Resetando a vida
        global.vida_atual = global.vida_max;
    }
    
}