event_inherited();
sprite = spr_sus;
name = "suspicious bush";
max_stack = 5;
description = "what";
destroyAfterPickup = false;
consumable = false;
func = function(){
    Player.sprint_time = 5;
    room_goto(Room3);
}