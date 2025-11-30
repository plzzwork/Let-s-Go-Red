/*var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
talking_distance = distToPlayer < 200;

var confirm = keyboard_check_pressed(ord("Z") && talking_distance);

text_prog = min(text_prog + text_spd, text_len);

if(text_prog == text_length){
    if(confirm){
        next();
    }
}
else if(confirm){
    text_prog = text_len;
}*/

var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(ord("Z")) && inTalkingDistance){
    if(obj_Dialogue.talkingTo != noone && obj_Dialogue.talkingTo != id){return;} 
    if(obj_Dialogue.debounce){return;}
    talk();
}