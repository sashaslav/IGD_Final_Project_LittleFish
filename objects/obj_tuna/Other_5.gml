//checks if data carrier doesn't already exist, creates instance if there is none
if (!instance_exists(obj_data_carrier)) {
	instance_create_depth(0,0,0,obj_data_carrier);
}

//copies the room target enter id to the data carrier obj
obj_data_carrier.destination_enter = destination_enter;








