x = 352
y = 64
show_debug_message("Card Swipe Counter");
show_debug_message(counter);
if(counter < 25){
	cardscan.image_index = 2
	show_debug_message("Too Fast!");
}
if(counter > 35){
	cardscan.image_index = 1
	show_debug_message("Too Slow!");
}
if(counter >= 25 and counter <= 35){
	show_debug_message("Good Scan!");
	room = Demo_End
	// good scan
}
else{
	// bad scan
	
	timerid =  time_source_create(time_source_global,1,time_source_units_seconds,temporary)
	time_source_start(timerid)
}