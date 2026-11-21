//Desenho a base por baixo do upgrade
draw_sprite_ext(spr_base_upgrades, 0, x, y, xscale, yscale, image_angle + ang, c_white, 1);

draw_sprite_ext(spr_upgrades, indice, x, y, xscale, yscale, image_angle + ang, c_white, 1);

draw_text(x + 35, y, global.lista_upgrades[indice])

draw_set_font(fnt_texto)
if (liberado)
{
    draw_text(20, room_height - 50, texto);
}

draw_text(x + 3, y -30, global.precos[indice])

draw_set_font(-1);