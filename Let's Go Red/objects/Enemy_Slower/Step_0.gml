var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);

if(Player.hit1 == id || Player.hit2 == id || Player.hit3 == id || Player.hit4 == id || Player.hit5 == id || Player.hit6 == id || Player.hit7 == id || Player.hit8 == id || Player.hit9 == id){
    ifSpotted = true;
    spot_time = 5;
    collision_circle_list(x, y, 500,Enemy_Parent, false, false, instances, false);
    for(var i = 0; i < ds_list_size(instances); i++){
        //show_debug_message("FOUND");
        ds_list_find_value(instances, i).eye_spy = true;
    }
}

if(ifSpotted == true && spot_time > 0){
    spot_time -= (delta_time/1000000);
    
    show_debug_message(spot_time);
    show_debug_message("\n");
}
else{
    ifSpotted = false;
    
}

if(distToPlayer <= 500 && ifSpotted == false){
    Player.walk_speed = 2;
    Player.sprint_speed = 4;
}
else{
    Player.walk_speed = 4;
    Player.sprint_speed = 8;
}
