Player.x = x_SpawnPos;
Player.y = y_SpawnPos;
if (instance_exists(obj_Inventory)){
    instance_destroy(obj_Inventory);
}
room_goto(TargetRoom);