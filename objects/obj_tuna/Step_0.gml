//all conditionals check for collisions w/ walls + npc


if (keyboard_check(ord("W")) && y >0 &&
!place_meeting(x,y-4,obj_wall) &&
!place_meeting(x,y-4,obj_bass_npc) &&
!place_meeting(x,y-4,obj_roe_big) &&
!place_meeting(x,y-4,obj_roe_small)) {
	//up control W
	y -= tuna_speed;
	
	sprite_index = spr_tuna_up;
	
} else if (keyboard_check(ord("A")) && x > 0 &&
!place_meeting(x-4,y,obj_wall) &&
!place_meeting(x-4,y,obj_bass_npc) &&
!place_meeting(x-4,y,obj_roe_big) &&
!place_meeting(x-4,y,obj_roe_small)) {
	//left control A
	x -= tuna_speed;
	
	sprite_index = spr_tuna_left;
	
} else if (keyboard_check(ord("S")) &&
y + sprite_height < room_height &&
!place_meeting(x,y+4,obj_wall) &&
!place_meeting(x,y+4,obj_bass_npc) &&
!place_meeting(x,y+4,obj_roe_big) &&
!place_meeting(x,y+4,obj_roe_small)) {
	//down control S
	y += tuna_speed;
	
	sprite_index = spr_tuna_down;
	
} else if (keyboard_check(ord("D")) &&
x + sprite_width < room_width &&
!place_meeting(x+4,y,obj_wall) &&
!place_meeting(x+4,y,obj_bass_npc) &&
!place_meeting(x+4,y,obj_roe_big) &&
!place_meeting(x+4,y,obj_roe_small)) {
	//right control D
	x += tuna_speed;
	
	sprite_index = spr_tuna_right;
}

//goes to end screen if everything is done
if (place_meeting(x,y,obj_end_entrance)) {
	room_goto(end_screen);
}

















