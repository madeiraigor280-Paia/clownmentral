var _tiro = instance_create_layer(x + (random_range(-50, 50)), y, layer, obj_inimigo_slime);
_tiro.espera = random_range(5, 10);
_tiro.distancia = random_range(20, 30);
_tiro.dano  = random_range(30, 100);
_tiro.vida_max = 1;
_tiro.dinheiro = 0;
_tiro.sprite_index = choose(spr_cachorro, spr_caixa, spr_caveira, spr_caixa, spr_corvo);


//Resetando o timer
alarm[1] = random_range(50,  120);