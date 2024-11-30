var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);

if (keyboard_check_pressed(ord("E")) && distance <= 100 && instance_exists(obj_dialogue_parent)) {
	//insert text box code here
	global.talked_to = true;
	obj_dialogue_parent.npc_touching = id;
	audio_play_sound(snd_talk,10,false);
}

if (global.talked_to == true && distance > 100) {
	if(instance_exists(obj_dialogue_parent)) {
		obj_dialogue_parent.npc_touching = noone;
	}	
}