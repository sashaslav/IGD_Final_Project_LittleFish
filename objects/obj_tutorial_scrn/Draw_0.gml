//title text
//sets text color
draw_set_color(c_white);

//aligns the text drawn on the screen to be in the center
draw_set_halign(fa_center);

//sets the text font
draw_set_font(fnt_start_txt);

//draws the actual text, uses the x/y vars of this obj
draw_text(x,y,"Tutorial");

//---------------------

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_start_txt);
draw_text(x,y+100,"WASD to Move");

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_start_txt);
draw_text(x,y+175,"RIGHT SHIFT to Sprint");

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_start_txt);
draw_text(x,y+250,"E to Interact");

//second line of text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_start_txt);
draw_text(x,y+325,"Press Return to Start");









