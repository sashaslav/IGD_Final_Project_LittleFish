var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);

if (keyboard_check_pressed(ord("E")) && distance <= 100) {
	//KEEP THE GLOBAL BOOL BEFORE THE LINE WHERE THE CHILD IS MADE
	global.npc_touching = id;
	instance_create_layer(x,y,"Instances",obj_dialogue_child);
	global.talked_to = true;
	audio_play_sound(snd_talk,10,false);
}

//if (global.talked_to == true && distance > 100) {
//	if(instance_exists(obj_dialogue_parent)) {
//		global.npc_touching = noone;
//	}	
//}

