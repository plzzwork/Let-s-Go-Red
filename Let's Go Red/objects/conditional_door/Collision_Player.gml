if (has_map(global.inv) and has_keycard(global.inv)){
    Player.x = x_SpawnPos;
    Player.y = y_SpawnPos;
    if (instance_exists(obj_Inventory)){
        instance_destroy(obj_Inventory); 
    }
    room_goto(TargetRoom);
}

else {
	show_debug_message("Cannot access this room");
}

