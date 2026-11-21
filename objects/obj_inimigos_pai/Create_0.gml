alarm[0] = random_range(espera, espera * 2);
valor_cor = 0;

vida = vida_max;


//Variaveis ao morrer
valor_mort = dinheiro;

//Andar
dist = distancia;
timer_walk = espera; 
tempo_walk = timer_walk;

valor_volto = 5;

estado = noone;

tempo_volta = 30;
timer_volto = tempo_volta;
iniciei_volta = false;

tempo_pisca = 0;

estado_walk = function()
{
    image_blend = c_white;
    tempo_walk--;

    if (tempo_walk < 0)
    {
        //Zero o timer
        tempo_walk = timer_walk;
        
        //Ando a distanca
        y += dist;
        
    }
    
    if (place_meeting(x, y, obj_barreira))
    {
        estado = estado_voltando;
        dou_dano();
        
    }
}

estado_voltando = function()
{
    
    if (!iniciei_volta)
    {
      
      
      var _timer = 10;
        iniciei_volta = true;
    }
    y -= valor_volto;
    
    timer_volto--;
    
    //show_debug_message(timer_volto)
    if (timer_volto <= 0)
    {
        estado = estado_walk;
        timer_volto = tempo_volta;
        iniciei_volta = false;
    }
}

dou_dano = function()
{
    obj_player.tomo_dano(dano)
}

//Metodo de tomar dano
tomando_dano = function(_dano = 1, _sprite = spr_dano)
{
    //Salvando o valor do dano
    var _valor = _dano;
    
    //Criando o mostra dano
    var _cria_dano = instance_create_layer(x, y, layer, obj_efeito_dano);
    _cria_dano.dano = _dano;
    
    valor_cor = 1;
    
    //tempo_pisca = 10;
    
    tween(id, "valor_cor", 0, tween_animation.back_out, 20);
    
    //var _minha_part = instance_create_layer(x, y + 14, "Efeitos", obj_dano);
    //Criando dano o efeito
        var _efeito_dano = instance_create_layer(x, y, "Efeitos", obj_dano);
        _efeito_dano.sprite_index = _sprite;
        
    vida -= _dano
    image_blend = c_red;
    vida = round(vida);
    
        
    
    if (vida <= 0)
    {
        instance_destroy();
        instance_create_layer(x, y, layer, obj_explosao);
        
        ////Criando a moeda
        //var _moeda = instance_create_layer(x + 50, y + 4, layer, obj_coin);
        ////Fazendo se mover
        //var _random = irandom_range(0, 270);
        //_moeda.velh = lengthdir_x(3, _random);
        //_moeda.velv = lengthdir_y(3, _random)
        //_moeda.valor = valor_mort;
    }
}

morrendo = function()
{
    
    
    instance_destroy();
    
}



muda_cor = function()
{
    tempo_pisca--;
    if (tempo_pisca > 0)
    {
        image_blend = c_red;
    }
    else {
    	image_blend = c_white;
    }
    
}

//estado = estado_walk;