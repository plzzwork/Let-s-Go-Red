event_inherited()

var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(ord("Z"))){
	show_debug_message("Z pressed")
	show_debug_message(string(inTalkingDistance))
}

if(keyboard_check_pressed(ord("Z")) && inTalkingDistance){
	show_debug_message(string(obj_Dialogue.talkingTo))
	show_debug_message(string(obj_Dialogue.debounce))
    if(obj_Dialogue.talkingTo != noone && obj_Dialogue.talkingTo != id){return;} 
    if(obj_Dialogue.debounce){return;}
    talk();
}
//show_debug_message("distances: "+string(Player.x-x)+", "+string(Player.y-y));
//show_debug_message(string(distToPlayer<200));
