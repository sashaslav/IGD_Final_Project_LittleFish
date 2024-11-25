
/*if space is pressed while near a roe sprite, 
the checks for interaction are set to true, and if
that is true, the eating animation plays, and eaten is set to
true
the global variables are used as checks for the dialogue
*/

switch state {
	
	case EAT_STATES.SM_ROE_EATING: //if near sm roe + space pressed, play eating anim
		var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);
		
		if (keyboard_check_pressed(vk_space) && distance <= 50 ) {
	
		interacted_with = true;
			//eating on the left
			if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_left) {
				audio_play_sound(snd_eat,1,false);
				obj_tuna.sprite_index = spr_tuna_eating_left;
				global.eaten = true;
				eaten = true;
			} 
			//eating on the right
			if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_right) {
				audio_play_sound(snd_eat,1,false);
				obj_tuna.sprite_index = spr_tuna_eating_right;
				global.eaten = true;
				eaten = true;
			}
			//eating from above
			if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_down) {
				audio_play_sound(snd_eat,1,false);
				global.eaten = true;
				eaten = true;
			}
			//eating from below
			if (interacted_with == true && obj_tuna.sprite_index == spr_tuna_up) {
				audio_play_sound(snd_eat,1,false);
				global.eaten = true;
				eaten = true;
			}
		state = EAT_STATES.SM_ROE_EATEN;
		}
		break;
		
	case EAT_STATES.BG_ROE_EATING: //if near bg roe + space pressed, play eating anim
		var distance = point_distance(obj_roe_big.x,obj_roe_big.y,obj_tuna.x,obj_tuna.y);
		
		if (keyboard_check_pressed(vk_space) && distance <= 50 ) {
	
		obj_roe_big.interacted_with = true;
			//eating on the left
			if (obj_roe_big.interacted_with == true && obj_tuna.sprite_index == spr_tuna_left) {
				audio_play_sound(snd_eat,1,false);
				obj_tuna.sprite_index = spr_tuna_eating_left;
				global.eaten = true;
				obj_roe_big.eaten = true;
			} 
			//eating on the right
			if (obj_roe_big.interacted_with == true && obj_tuna.sprite_index == spr_tuna_right) {
				audio_play_sound(snd_eat,1,false);
				obj_tuna.sprite_index = spr_tuna_eating_right;
				global.eaten = true;
				obj_roe_big.eaten = true;
			}
			//eating from above
			if (obj_roe_big.interacted_with == true && obj_tuna.sprite_index == spr_tuna_down) {
				audio_play_sound(snd_eat,1,false);
				global.eaten = true;
				obj_roe_big.eaten = true;
			}
			//eating from below
			if (obj_roe_big.interacted_with == true && obj_tuna.sprite_index == spr_tuna_up) {
				audio_play_sound(snd_eat,1,false);
				global.eaten = true;
				obj_roe_big.eaten = true;
			}
		state = EAT_STATES.BG_ROE_EATEN;
		}
		break;
	
	case EAT_STATES.SM_ROE_EATEN: //destroys obj instance when eating bool = true
		if (eaten == true) {
			visible = false;
			instance_destroy();
		}
		state = EAT_STATES.BG_ROE_EATING;
		break;
		
	case EAT_STATES.BG_ROE_EATEN: //destroys obj instance when eating bool = true
		if (obj_roe_big.eaten == true) {
			obj_roe_big.visible = false;
			instance_destroy(obj_roe_big);
		}
		state = EAT_STATES.SM_ROE_EATING;
		break;
	
}




