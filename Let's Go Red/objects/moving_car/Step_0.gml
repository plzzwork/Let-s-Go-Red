if(driving){
	y += 10
}
if(place_meeting(x,y,Player)){
	show_debug_message("Car Hit Player")
	Player.image_index = 1
}