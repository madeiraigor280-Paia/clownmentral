//Me diminuindo 
//E ficando transparente
image_alpha -= 0.05;
image_xscale -= 0.05;
image_yscale = image_xscale;

if (image_xscale <= 0.1)
{
    instance_destroy();
}