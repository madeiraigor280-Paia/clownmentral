//Tocando som
audio_play_sound(snd_moeda, 1, 0);
//Criando o mostra dano
    var _cria_dano = instance_create_layer(x, y, "Efeitos", obj_efeito_dano);
    _cria_dano.dano = valor;
    