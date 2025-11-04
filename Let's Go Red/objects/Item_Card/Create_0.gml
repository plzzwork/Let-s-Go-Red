event_inherited();
sprite = card;
name = "Keycard";
max_stack = 1;
description = "-";
destroyAfterPickup = true;
func = function(){
    Player.cardLevel = 3;
};