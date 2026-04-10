if(place_meeting(x,y,Player)){
	if(!crosswalk_light_on){
		// Do "getting run over" animation
		Player.killanim();
		moving_car.driving = true;
		timerid =  time_source_create(time_source_global,5,time_source_units_seconds,temporary)
	    time_source_start(timerid)
		// Kill Player
	}
}

