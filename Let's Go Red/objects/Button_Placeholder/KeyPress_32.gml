

if(distance_to_object(Player) < 16 and image_speed = 0){
	//print("button press")
	cross_collision.crosswalk_light_on = true
	image_speed = 0.33
	timerid = time_source_create(time_source_global,5,time_source_units_seconds,temporary)
	time_source_start(timerid)
	
}

