var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(vk_space) && inTalkingDistance){
    if(NPC__Parent.talkingTo != noone && NPC__Parent.talkingTo != id){return;} 
    if(NPC__Parent.debounce){return;}
    talk();
}