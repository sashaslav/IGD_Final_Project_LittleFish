var distance = point_distance(x,y,obj_tuna.x,obj_tuna.y);

if (keyboard_check_pressed(ord("E")) && distance <= 100) {
	//show_debug_message(global.touch_npc1)
	global.npc_touching = id;
	instance_create_layer(x,y,"Instances",obj_dialogue_child);
	global.talked_to = true;
	
	audio_play_sound(snd_talk,10,false);
}









