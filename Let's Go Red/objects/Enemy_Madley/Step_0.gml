
var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);

//Checks if the player found the id for this specific enemy
if(Player.hit1 == id || Player.hit2 == id || Player.hit3 == id || Player.hit4 == id || Player.hit5 == id || Player.hit6 == id || Player.hit7 == id || Player.hit8 == id || Player.hit9 == id){
    ifSpotted = true;
    spot_time = 0.75;
}

//Enemy will not start moving until spot_time reaches 0
if(ifSpotted == true && spot_time > 0){
    spot_time -= (delta_time/1000000);
    
    show_debug_message(spot_time);
    show_debug_message("\n");
}
else{
    ifSpotted = false;
}

//Moves if the player is in range and if they have been spotted or not.

if(distToPlayer < 700 && ifSpotted == false){
    speed = 3;
}
else{
    speed = 0;
}

if(place_meeting(x, y, Wall_Parent)){
     speed = speed/5;
}

if(eye_wait > 0){
    eye_wait -= delta_time/1000000;
}
else{
    eye_spye = false
    eye_wait = 1.5;
}

//Gets the player's position and moves towards it according to the speed
if(eye_spy == false){
    move_towards_point(Player.x, Player.y, speed);
}
else{
    ifSpotted = true;
    move_towards_point(x, y, speed);
}
