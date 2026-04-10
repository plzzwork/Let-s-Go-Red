event_inherited()

image_speed = 0

temporary = function(){
	image_speed = 0
	image_index = 0
	if(instance_exists(cross_collision)){
		cross_collision.crosswalk_light_on = false
	}
	
}