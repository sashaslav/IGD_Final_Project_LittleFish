
//checks for whether the player is touching the npc
//acts as switch to go get new dialogue from the system

if (global.npc_touching != noone) {
	show_debug_message(dialogue.count());
	//checks if more dialogue is being shown on the screen
	//and if the dialogue count is less than/equal to zero
	//if these are true, destroys the instance + does early return
	if(more_dialogue == false) {
		if(dialogue.count() <= 0) {
			global.npc_touching = noone;
			instance_destroy();
			return;
		}
		//if false, pop the current dialogue in store it in the var,
		//+ switch bool to true
		current_dialogue = dialogue.pop();
		showing_dialogue = true;
		more_dialogue = true;
	}  else {
	//checks which key has been released,
	//if it has, the showing_dialogue var is reset, and it will re-trigger the above code
	if(keyboard_check_released(key_next)) {
		more_dialogue = false;
	}
}
	
}







