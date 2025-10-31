if (current_msg < 0) exit; 
    
show_debug_message(input_key);

var _str = messages[current_msg].msg;

if(current_char < string_length(_str)){ 
    if (current_char > string_length(_str)/3 && keyboard_check_pressed(input_key)){ //complete automatically if pressed
        draw_message = _str;
        current_char = string_length(_str);
    }
    else{
        current_char += char_speed;
        draw_message = string_copy(_str,0,current_char);
    }
}
else if (keyboard_check_pressed(input_key)){
    current_msg++;
    if (current_msg >= array_length(messages)){
        instance_destroy();
    }
    else{
        current_char = 0;
    }
}

