var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(vk_space) && inTalkingDistance){
    talk();
}