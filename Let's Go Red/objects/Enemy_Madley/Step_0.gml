// Inherit the parent event
event_inherited();

//Checks if the player found the id for this specific enemy
if(Player.hit1 == id || Player.hit2 == id || Player.hit3 == id || Player.hit4 == id || Player.hit5 == id || Player.hit6 == id || Player.hit7 == id || Player.hit8 == id || Player.hit9 == id){
    ifSpotted = true;
    spot_time = 0.75;
}

//Enemy will not start moving until spot_time reaches 0
if(ifSpotted == true && spot_time > 0){
    spot_time -= (delta_time/1000000);
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

//Gets the player's position and moves towards it according to the speed
move_towards_point(Player.x, Player.y, speed);