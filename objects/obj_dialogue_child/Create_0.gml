
//Inherit the parent event
event_inherited();

//adds new dialogue
//npc 1
if (global.npc_touching.object_index == obj_extra_npc1) {
	dialogue.add(spr_bass_neutral, "im just a lil guy :3");
	dialogue.add(spr_bass_neutral, "eeeeeeeeeee");
	dialogue.add(spr_bass_neutral, "haaaiiii");
} else {
	if (global.has_happened == false && global.npc_touching.object_index == obj_bass_npc) {
		dialogue.add(spr_tuna_neutral, "Hey, uh, do you know if there's any way I can travel to other waters?");
		dialogue.add(spr_bass_neutral, "Hmm, well there are some sea bass roe in the cave to the north!");
		dialogue.add(spr_bass_neutral, "Rumor has it that if you eat enough of the roe, it'll allow you to swim in any kind of water!");
		dialogue.add(spr_bass_neutral, "You should give it a shot!");
		dialogue.add(spr_tuna_neutral, "Thanks so much! I'll go right now!");
		dialogue.add(spr_bass_neutral, "Great! Come back here when you're all done!");
		dialogue.add(spr_bass_neutral, "And don't forget to press SPACE to eat the roe!");
		global.has_happened = true;
	} else if (global.has_happened == true && global.eaten == false) {
		//conv 2
		dialogue.add(spr_bass_neutral, "Well, what are you waiting for? Go and eat all that roe!");
	}
	//npc 2
	if (global.npc_touching.object_index == obj_extra_npc2) {
		dialogue.add(spr_bass_neutral, "omg im ANOTHER, LITTLER guy");
		dialogue.add(spr_bass_neutral, "bweeehhhh");
	}
	//conv 3
	if (global.has_happened == true && global.eaten == true) {
		dialogue.add(spr_tuna_neutral, "I did it! I ate all of them!");
		dialogue.add(spr_bass_neutral, "Awesome! Now just go down that path to the southwest - it will take you to freshwater!")
		dialogue.add(spr_tuna_neutral, "Thank you so much!");
		dialogue.add(spr_bass_neutral, "No problem, good luck on your journey!");
	}
}







