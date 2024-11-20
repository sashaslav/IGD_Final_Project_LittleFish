//title text
//sets text color
draw_set_color(c_black);

//aligns the text drawn on the screen to be in the center
draw_set_halign(fa_center);

//sets the text font
draw_set_font(fnt_start_txt);

//draws the actual text, uses the x/y vars of this obj
draw_text(x+50,y-250,"Little Fish in a Large Body of Water");

//---------------------

//second line of text
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(fnt_start_txt);
draw_text(x+50,y+350,"Press Space to Start");





