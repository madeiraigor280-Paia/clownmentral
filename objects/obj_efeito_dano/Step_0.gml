//Se eu estou subindo, eu vou descer
if (vspeed <= 0)
{
    tween(id, "vspeed", 1, tween_animation.circ_out, 60);
}

//Se eu ja estou caindo, eu comeco a sumir
if (vspeed > 0)
{
    tween(id, "alpha", 0, tween_animation.ease, 30);
    
    //Se eu ja sumi, eu me destruo
    if (alpha <= 0)
    { 
        instance_destroy();
    }
}
