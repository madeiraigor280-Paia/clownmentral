//Nao fui coletado
coletado = false;

speed = random_range(1, 4);


direction = random(359);

instance_create_layer(x, y, layer, obj_rastro);

alarm[0] = 10;

valor = 1;
velh = 0;
velv = 0;

//Nao tenho rastro
meu_rastro = noone;

timer = 10;

//Crio o rastro
crio_rastro = function()
{
    timer ++;
    //Se estou me mexendo
    if (velh > 0.1 or velv > 0.1)
    {
       if (timer > 7)
        {
           meu_rastro = instance_create_layer(x, y, "Rastro", obj_rastro);
            timer = 0;
        }
    }
    else {
    	
    }
    
    
}

//Metodos de coletar moeda
me_coleto = function()
{
    //Se ja fui coletado, eu saio do metodo
    if (coletado) return;
    
    //Me destruindo
    instance_destroy();
    
    //Tocando som
    audio_play_sound(snd_moeda, 1, 0);
    
    //Aumento o dinheiro no meu valor multiplicado pelo level do upgrade
    
    
    coletado = true;
}