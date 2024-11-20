//sets text color
draw_set_color(c_white);

//aligns the text drawn on the screen to be in the center
draw_set_halign(fa_left);

//sets the text font
draw_set_font(fnt_start_txt);

//draws the actual text, uses the x/y vars of this obj
draw_text(x,y,"The End!!!!!!");

//---------------------

//second line of text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_start_txt);
draw_text(x,y+200,"More content");

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_start_txt);
draw_text(x,y+250,"to come! (maybe.....)");









