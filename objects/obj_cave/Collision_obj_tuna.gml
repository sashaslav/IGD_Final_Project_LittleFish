other.destination_enter = destination_enter;

if(global.talked_to == true) {
	audio_play_sound(snd_cave_enter,1,false);
	room_goto(destination_room);
} 






