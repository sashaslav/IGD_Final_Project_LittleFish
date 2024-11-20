if !audio_is_playing(snd_end_screen) {
  audio_play_sound(snd_end_screen,1,false);
}
//if the player presses the spacebar, they will go back to the start screen
if (keyboard_check(vk_space)) {
	room_goto(start_screen);
	audio_stop_sound(snd_end_screen);
}





