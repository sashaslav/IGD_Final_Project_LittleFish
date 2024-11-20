if !audio_is_playing(snd_start_screen) {
  audio_play_sound(snd_start_screen,1,false);
}

//if the player presses the spacebar, they will advance to the next room
if (keyboard_check(vk_space)) {
	room_goto(main_area);
	audio_stop_sound(snd_start_screen);
}





