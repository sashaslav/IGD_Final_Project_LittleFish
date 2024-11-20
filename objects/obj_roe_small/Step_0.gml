var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);

if (keyboard_check_pressed(vk_space) && distance <= 50 ) {
	
	interacted_with = true;
	
	if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_left) {
		audio_play_sound(snd_eat,1,false);
		obj_tuna.sprite_index = spr_tuna_eating_left;
		global.eaten = true;
		eaten = true;
	} 
	
	if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_right) {
		audio_play_sound(snd_eat,1,false);
		obj_tuna.sprite_index = spr_tuna_eating_right;
		global.eaten = true;
		eaten = true;
	} 
	
}

if (eaten == true) {
	visible = false;
	instance_destroy();
}







