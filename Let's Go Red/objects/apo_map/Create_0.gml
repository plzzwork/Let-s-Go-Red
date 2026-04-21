event_inherited();
name = "APO Map";
max_stack = 1;
description = "For whatever reason, South is at the top.";
destroyAfterPickup = true;
consumable = false;
func = function(){
    Player.sprint_time = 5;
}
sprite = apo_map_sprite