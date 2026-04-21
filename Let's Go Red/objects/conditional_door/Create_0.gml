AccessLevel = 3;

has_map = function(_arr){
	for(var i = 0; i<array_length(_arr);i++){
		show_debug_message(_arr[i].name);
		if(_arr[i].name == "APO Map"){
			return true;
		}
	}
	return false
}

has_keycard = function(_arr){
	for(var i = 0; i<array_length(_arr);i++){
		show_debug_message(_arr[i].name);
		if(_arr[i].name == "Keycard"){
			return true;
		}
	}
	return false
}