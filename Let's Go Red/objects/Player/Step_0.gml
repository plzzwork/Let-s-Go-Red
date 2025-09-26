var _hor = keyboard_check((ord("D"))) - keyboard_check((ord("A")));
var _ver = keyboard_check((ord("S"))) - keyboard_check((ord("W")));

var movementAngle = arctan2(_ver, _hor);
var xMovement = cos(movementAngle);
var yMovement = sin(movementAngle);

// move_and_collide(moveX,moveY,collision_tiles, undefined, undefined, undefined, max_hor_speed, max_vert_speed);
if(_ver != 0 || _hor != 0){
    var speedToUse = walk_speed;
    if(sprint_time <= 0){
        winded = true;
    }
    else if(sprint_time >= 5){
        winded = false;
    }
    
    if(keyboard_check(vk_shift) && sprint_time > 0 && !winded){
        sprint_time -= (delta_time / 1000000);
        speedToUse = sprint_speed;
    }
    
    else if (sprint_time < 5){
        sprint_time += (delta_time / 1500000);
    }
    move_and_collide(xMovement * speedToUse, yMovement * speedToUse,tilemap, undefined, undefined, undefined, speedToUse, speedToUse);
}
// if moving, set sprite
if (_hor != 0 or _ver != 0){
    /*
    if (_ver < 0){
        sprite_index = spr_player_walk_up;
    } else if (_ver > 0) {
        sprite_index = spr_player_walk_down;
    } else if (_hor > 0) {
        sprite_index = spr_player_walk_right;
    }  else if (_hor < 0) {
        sprite_index = spr_player_walk_left;
    }
     */
} else { // if not moving, set to idle sprite
    /*
    if (sprite_index == spr_player_walk_right) {
        sprite_index = spr_player_idle_right;
    } else if (sprite_index == spr_player_walk_left) {
        sprite_index = spr_player_idle_left;
    } else if (sprite_index == spr_player_walk_down) {
        sprite_index = spr_player_idle_down;
    } else if (sprite_index == spr_player_walk_up) {
        sprite_index = spr_player_idle_up;
    }
    */
}

if (hp <= 0){
    game_restart();
}

