//tween(id, "ang", 0)

var _mouse_enter = collision_point(mouse_x, mouse_y, id, true, false)
    // O mouse está sobre o objeto

if (_mouse_enter)
{
    //Posso escrever
    liberado = true;
    tween(id, "xscale", 1.2);
    tween(id, "yscale", 1.2);
    //tween(id, "ang", 10)
    if (!movi)
    {
         ang = 10;
        movi = true;
    }
    
}
else {
	movi = false;
    tween(id, "xscale", 1);
    tween(id, "yscale", 1);
    liberado = false;
}


//show_debug_message(ang)

tween(id, "ang", 0);
