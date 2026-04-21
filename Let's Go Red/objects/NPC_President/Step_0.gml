var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(ord("Z")) && inTalkingDistance){
	show_debug_message(string(obj_Dialogue.talkingTo))
	show_debug_message(string(obj_Dialogue.debounce))
	show_debug_message(string(id))
	//show_debug_message(obj_Dialogue.talkingTo)
    if(obj_Dialogue.talkingTo != noone && obj_Dialogue.talkingTo != id){return;} 
    //if(obj_Dialogue.debounce){return;}
    talk();
}