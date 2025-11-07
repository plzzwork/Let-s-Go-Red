//Copied from NPC code
var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

var distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
var inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(vk_space) && inTalkingDistance){
    pickedUp = !pickedUp;
    //drop it in front of the player
    if (!pickedUp){
        x = Player.x + dropOffset;
        y = Player.y;
    }
}

if (pickedUp){
    x = Player.x;
    y = Player.y + offset;
}