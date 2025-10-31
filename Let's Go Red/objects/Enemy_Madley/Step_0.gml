// Inherit the parent event
event_inherited();

if(distToPlayer < 700){
    speed = 3;
}
else{
    speed = 0;
}
move_towards_point(Player.x, Player.y, speed);