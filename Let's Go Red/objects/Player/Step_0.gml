var _hor = keyboard_check((ord("D"))) - keyboard_check((ord("A")));
var _ver = keyboard_check((ord("S"))) - keyboard_check((ord("W")));

if( _hor != 0 || _ver != 0){
    movementAngle = arctan2(_ver, _hor);
}

var xMovement = cos(movementAngle);
var yMovement = sin(movementAngle);

// move_and_collide(moveX,moveY,collision_tiles, undefined, undefined, undefined, max_hor_speed, max_vert_speed);
if(NPC__Parent.talkingTo != noone){return;}
    

if(_ver != 0 || _hor != 0){
    var speedToUse = walk_speed;
    if(sprint_time <= 0){
        winded = true;
    }
    else if(sprint_time >= 5){
        winded = false;
    }
    
    //Checks if the player is sprinting and if they are not winded
    if(keyboard_check(vk_shift) && sprint_time > 0 && !winded){
        //decreases sprint_time
        sprint_time -= (delta_time / 1000000);
        speedToUse = sprint_speed;
        
        //resets the sprint_wait_time
        sprint_wait_time = 0.75;
        
        isSprint = true;
    }
    else{
        isSprint = false;
    }
    
    move_and_collide(xMovement * speedToUse, yMovement * speedToUse,tilemap, undefined, undefined, undefined, speedToUse, speedToUse);
    
    movementAngle = movementAngle*(180/pi);
    
    if(movementAngle < 0){
    movementAngle = movementAngle*-1;
    }
    else{
        movementAngle = (movementAngle-360)*-1;
    }
    
    if(movementAngle == 360 || movementAngle == 180){
        if(movementAngle == 180){
            hit1 = collision_line(x, y-x1, x-y1, y-x2, Item_Parent, false, true);
            hit2 = collision_line(x,y-x3,x-y1,y-x4, Item_Parent, false, true);
    
            hit3 = collision_line(x, y+x1, x-y1, y+x2, Item_Parent, false ,true);
            hit4 = collision_line(x,y+x3,x-y1, y+x4, Item_Parent, false, true);
    
            hit5 = collision_line(x,y,x-y1,y, Item_Parent, false ,true);
        }
        else{
            hit1 = collision_line(x, y-x1, x+y1, y-x2, Item_Parent, false, true);
            hit2 = collision_line(x,y-x3,x+y1,y-x4, Item_Parent, false, true);
    
            hit3 = collision_line(x, y+x1, x+y1, y+x2, Item_Parent, false ,true);
            hit4 = collision_line(x,y+x3,x+y1, y+x4, Item_Parent, false, true);
    
            hit5 = collision_line(x,y,x+y1,y, Item_Parent, false ,true);
        }
        
    }
    else{
        hit1 = collision_line(x, y, x + lengthdir_x(320, movementAngle) , y + lengthdir_y(320, movementAngle), Item_Parent, false, true);
    
        hit2 = collision_line(x-x1, y, x+ lengthdir_x(320, movementAngle) - x2, y + lengthdir_y(320, movementAngle), Item_Parent, false, true);
        hit3 = collision_line(x+x1, y, x+ lengthdir_x(320, movementAngle) + x2, y + lengthdir_y(320, movementAngle), Item_Parent, false, true);
    
        hit4 = collision_line(x-x3,y,x-x4 + lengthdir_x(320, movementAngle), y+ lengthdir_y(320, movementAngle), Item_Parent, false, true); 
        hit5 = collision_line(x+x3,y,x+x4 + lengthdir_x(320, movementAngle), y+ lengthdir_y(320, movementAngle), Item_Parent, false, true); 
    }
    
}

else{
    isSprint = false;
}

if(hit1 != noone || hit2 != noone || hit3 != noone || hit4 != noone|| hit5 != noone){
    //show_debug_message("In range");
}

if(sprint_time < 5 && !isSprint){
    //Player can not regain stamina until 0.75 seconds pass after sprinting
    if(sprint_wait_time > 0){
        sprint_wait_time -= (delta_time / 1000000);
    }
    else{
        //Player regains stamina at a rate of 0.66 seconds of sprinting per IRL second
        sprint_time += (delta_time / 1500000);
    }
}

//show_debug_message(sprint_time);

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

