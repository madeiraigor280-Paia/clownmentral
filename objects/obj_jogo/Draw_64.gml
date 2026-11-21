draw_set_font(fnt_texto);

//Definindo o texto do dinheiro
var _valor = string("Dinheiro: {0}", round(dinheiro))
//draw_text(20, 20, "Dinheiro: " + string(round(global.dinheiro)));
draw_set_colour(c_black);

draw_text(20 + 2, 20 + 2, _valor);

draw_set_colour(c_white);
draw_text(20 + 2, 20 + 2, _valor);


draw_set_font(-1);