var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);
        
if (keyboard_check_pressed(vk_space) && distance <= 50 ) {
    interacted_with = true;
    audio_play_sound(snd_eat,1,false);
    
    global.eaten = true;
    eaten = true;
    
    switch (obj_tuna.sprite_index) {
        case spr_tuna_left:
        obj_tuna.sprite_index = spr_tuna_eating_left;
        break;
        case spr_tuna_right:
        obj_tuna.sprite_index = spr_tuna_eating_right;
        break;
        case spr_tuna_up:
        //obj_tuna.sprite_index = spr_tuna_eating_up;
        break;
        case spr_tuna_down:
        //obj_tuna.sprite_index = spr_tuna_eating_down;
        break;
    }
}
else if (eaten) {
    visible = false;
    instance_destroy();
}








