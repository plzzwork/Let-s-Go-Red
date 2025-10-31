var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(ord("Z")) && inTalkingDistance){
    if(obj_Dialogue.talkingTo != noone && obj_Dialogue.talkingTo != id){return;} 
    if(obj_Dialogue.debounce){return;}
    talk();
}