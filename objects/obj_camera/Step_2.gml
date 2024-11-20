x = obj_tuna.x - 250;
y = obj_tuna.y - 150;

//leftmost border
if (x < 0) {
	x = 1;
}

//rightmost border
if (x + view_width > room_width) {
	x = room_width - view_width;
}

//upper border
if (y < 0) {
	y = 1;
}

//bottom border
if (y + view_height > room_height) {
	y = room_height - view_height;
}

//sets the camera's view position to the x and y vals of the tuna object
camera_set_view_pos(view_camera[0],x,y);





