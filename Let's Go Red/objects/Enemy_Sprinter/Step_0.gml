// Inherit the parent event
event_inherited();

if(distToPlayer > 500){
    ifSpotted = false;
    speed = 4
}
else if(distToPlayer > 400){
    speed = 3;
}

if(distToPlayer <= 200 && sprint_wait_time == 2){
    speed = 0;
    sprint_x = Player.x;
    sprint_y = Player.y;
}
else if(distToPlayer <= 200 && sprint_wait_time > 0){
    sprint_wait_time -= (delta_time/1000000);
    speed = 0;
}
else{
    speed = 10;
}


//Checks if the player found the id for this specific enemy
if(Player.hit1 == id || Player.hit2 == id || Player.hit3 == id || Player.hit4 == id || Player.hit5 == id || Player.hit6 == id || Player.hit7 == id || Player.hit8 == id || Player.hit9 == id){
    ifSpotted = true;
    sprint_wait_time = 2;
}


if(ifSpotted){
    speed = -2;
}


//Gets the player's position and moves towards it according to the speed
if(sprint_wait_time == 2){
    if(Player.x >= Player.y){
        
    }
}
move_towards_point(Player.x, Player.y, speed);