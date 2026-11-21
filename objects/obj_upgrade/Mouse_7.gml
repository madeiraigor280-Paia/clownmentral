//Se tenho mais dinheiro do que o preco do item
if (global.dinheiro >= global.precos[indice]) {
    //Aumento uma quantidade do item
    global.lista_upgrades[indice] += 1;
    //Diminuo o dinheiro dele pelo preco
    global.dinheiro -= global.precos[indice];  
    //Multiplico o preco pela metade
    global.precos[indice] *= 1.5;
    //E dou floor para evitar numero quebrado
    global.precos[indice] = floor(global.precos[indice]);
    
    //Tocando o som da compra
    var _pitch = random_range(0.8, 1.5);
    audio_play_sound(snd_compra, 0, 0, , , _pitch);
     
}