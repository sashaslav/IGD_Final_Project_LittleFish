
//all of the elements under this statement are only drawn if the bool = TRUE
//otherwise, nothing is drawn
if (showing_dialogue == true) {
	
	//sets local vars
	var text_x = 30;
	var text_y = 488;
	var height = 32;
	//var border = 5;
	var padding = 16;
	var box_x = 2;
	var box_y = 488;
	
	//sets the height of the message
	height = string_height(current_dialogue.message);
	
	//if the above is not the case, sets the height to the height of the sprite being used
	if(sprite_get_height(current_dialogue.sprite) > height) {
		height = sprite_get_height(current_dialogue.sprite);
	}
	
	//multiplies padding by 2 to add 32px to top and bottom of sprites
	height += padding * 2;
	
	//determines starting position of text + adds padding to it
	text_x = sprite_get_width(current_dialogue.sprite) + (padding * 2);
	
	//BOX DRAWING CODE --------------------------------------------
	
	//draws the text box sprite to the screen
	//params: sprite, frame of sprite (use 0 if only one frame), x, y)
	draw_sprite(spr_text_box,0,box_x,box_y); 
	
	//draws the individual character sprite into the box
	if(current_dialogue.sprite != -1) {
		draw_sprite(current_dialogue.sprite, 0, box_x + 50, box_y+ 40);
	}
	//-------------------------------------------------------------
	
	//draws the text into the box
	//includes: color, font, alignment, placement and string)
	draw_set_color(c_white);
	draw_set_font(fnt_dialog_txt);
	draw_set_halign(fa_left);
	draw_text_ext(text_x + 65,text_y + 50, current_dialogue.message, 30, display_get_gui_width() - 192);
	

	draw_text_ext(text_x + 650,text_y + 200, "Press ESC to continue", 16, display_get_gui_width() - 192);
}

//draw_set_alpha(1);



