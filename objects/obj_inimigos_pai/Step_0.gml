
//estado();
muda_cor();


if (image_xscale == 1.3)
{
    tween(id, "image_xscale", 1, tween_animation.bounce, 10)
    tween(id, "image_yscale", 1, tween_animation.bounce, 10)
}

image_blend = merge_colour(c_white, c_red, valor_cor);
//Mudando o image blend

