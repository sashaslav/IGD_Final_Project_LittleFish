//checks if data carrier obj exists in room
if (instance_exists(obj_data_carrier)) {
	//if it does, we get our data back from it
	destination_enter = obj_data_carrier.destination_enter;
	//now we don't need it anymore, so we can destroy it
	instance_destroy(obj_data_carrier);
	//sets the location of the player to the entrance info that was carried
	if (instance_exists(destination_enter)) {
		x = destination_enter.x;
		y = destination_enter.y;
	}
}








