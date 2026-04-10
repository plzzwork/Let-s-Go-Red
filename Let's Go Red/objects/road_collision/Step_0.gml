if(place_meeting(x,y,Player)){
	Player.killanim()
	moving_car.driving = true;
	timerid =  time_source_create(time_source_global,5,time_source_units_seconds,temporary)
	    time_source_start(timerid)
}

