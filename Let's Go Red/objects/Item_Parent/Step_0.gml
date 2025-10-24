//Copied from NPC code
var distToPlayerX = Player.x - x;
var distToPlayerY = Player.y - y;

var distToPlayer = sqrt(distToPlayerX*distToPlayerX + distToPlayerY*distToPlayerY);
var inTalkingDistance = distToPlayer < 200;

if(keyboard_check_pressed(vk_space) && inTalkingDistance){
    show_debug_message(addItem(sprite, name, max_stack, description, consumable, func));
    if (destroyAfterPickup)
        instance_destroy();
}