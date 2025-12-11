var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);

if(detect_time > 0){
    detect_time -= (delta_time/1000000);
}
else{
    sprint_x = Player.x;
    sprint_y = Player.y;
    detect_time = 5;
}


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

if(distToPlayer <= 200 && sprint_wait_time > 0){
    sprint_wait_time -= (delta_time/1000000);
    speed = 0;
}
else{
    speed = 8;
}


//Checks if the player found the id for this specific enemy
if(Player.hit1 == id || Player.hit2 == id || Player.hit3 == id || Player.hit4 == id || Player.hit5 == id || Player.hit6 == id || Player.hit7 == id || Player.hit8 == id || Player.hit9 == id){
    ifSpotted = true;
    sprint_wait_time = 2;
}


if(ifSpotted){
    speed = -2;
}

if(x == sprint_x && y == sprint_y){
    speed = 0;
}


if(place_meeting(x, y, Wall_Parent)){
     x -= 10;
}

if(eye_wait > 0){
    eye_wait -= delta_time/1000000;
}
else{
    eye_spy = false
    eye_wait = 1.5;
}

if(eye_spy == false){
    move_towards_point(sprint_x, sprint_y, speed);
}

