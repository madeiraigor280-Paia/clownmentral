//Checando se acabaram os inimigos
if (!instance_exists(obj_inimigos_pai))
{
    //Checando se acabaram as explosoes
    if (!instance_exists(obj_explosao))
    {
        //Se o destino for valido, eu vou para ele
        if (room_exists(destino))
        {
            room_goto(destino)
            
            //Liberando o level novo se tiver um para liberar
            if (liberar != 0)
            {
                //global.lista_bloqueados[liberar] = true;
                global.lista_bloqueados[liberar] = true;
            }
        }
    }
}



var _inimigo = instance_place(mouse_x, mouse_y, obj_inimigos_pai)
//if (position_meeting(mouse_x, mouse_y, obj_inimigos_pai))
//{
    //var _click = mouse_check_button_pressed(mb_left)
    //
    //if (_click)
    //{
        ////Dou dano com base no meu dano
        //with(other)
        //{
            //other.tomando_dano(1);
        //}
    //}
    //
    //
//}


if (_inimigo)
{
    var _click = mouse_check_button_pressed(mb_left);
    
    //Se cliquei
    if (_click)
    {
        //Entro no codico do inimigo
        with(_inimigo)
        {
            var _lista_click = global.lista_upgrades[0];
            var _dano_click = 1 * (global.lista_upgrades[0] * 1.2)
            _inimigo.tomando_dano(_dano_click);
        }
    }
}

image_blend = merge_colour(c_white, c_red, valor_cor)