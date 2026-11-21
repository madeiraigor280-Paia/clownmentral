//Crinaod as moedas
var _qtd = 1;
var _obj = obj_coin1;

//Vou ajustar o valor das moedas com base no meu valor
if (dinheiro >= 1000)
{
    _qtd = dinheiro  / 1000;
    _obj = obj_coin1000;
}
else if (dinheiro >= 100)
{
    _qtd = dinheiro  / 100;
    _obj = obj_coin100;
}
else if (dinheiro >= 10)
{
    _qtd = dinheiro  / 10;
    _obj = obj_coin10;
    
}
else {
	_qtd = dinheiro;
}

//Vou criar com base no meu valor
var _random = irandom_range(0, 270);
repeat(_qtd)
{
    //Crinado a moeda e dando os dados dela
    var _moeda = instance_create_layer(x, y, layer, _obj);
    
    _moeda.velh = lengthdir_x(3, _random);
    _moeda.velv = lengthdir_y(3, _random);
    
    
}