var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

if( _hor != 0 || _ver != 0){
    movementAngle = arctan2(_ver, _hor);
}

var xMovement = cos(movementAngle);
var yMovement = sin(movementAngle);

// move_and_collide(moveX,moveY,collision_tiles, undefined, undefined, undefined, max_hor_speed, max_vert_speed);
if(obj_Dialogue.talkingTo != noone){return;}
    

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
    
    move_and_collide(xMovement * speedToUse, yMovement * speedToUse, [tilemap, Wall_Parent], 1, undefined, undefined, speedToUse, speedToUse);
    
    movementAngle = movementAngle*(180/pi);
    
    if(movementAngle < 0){
        movementAngle = movementAngle*-1;
    }
    else{
        movementAngle = (movementAngle-360)*-1;
    }
    
    if(movementAngle == 360 || movementAngle == 180){
        if(movementAngle == 180){
            hit1 = collision_line(x, y-x1, x-y1, y-x2, Enemy_Parent, false, true);
            hit2 = collision_line(x,y-x3,x-y1,y-x4, Enemy_Parent, false, true);
    
            hit3 = collision_line(x, y+x1, x-y1, y+x2, Enemy_Parent, false ,true);
            hit4 = collision_line(x,y+x3,x-y1, y+x4, Enemy_Parent, false, true);
            
            hit5 = collision_line(x, y+x5, x-y1, y+x6, Enemy_Parent, false ,true);
            hit6 = collision_line(x,y-x5,x-y1, y-x6, Enemy_Parent, false, true);
            
            hit7 = collision_line(x, y+x7, x-y1, y+x1, Enemy_Parent, false ,true);
            hit8 = collision_line(x,y-x7,x-y1, y-x1, Enemy_Parent, false, true);
    
            hit9 = collision_line(x,y,x-y1,y, Enemy_Parent, false ,true);
        }
        else{
            hit1 = collision_line(x, y-x1, x+y1, y-x2, Enemy_Parent, false, true);
            hit2 = collision_line(x,y-x3,x+y1,y-x4, Enemy_Parent, false, true);
    
            hit3 = collision_line(x, y+x1, x+y1, y+x2, Enemy_Parent, false ,true);
            hit4 = collision_line(x,y+x3,x+y1, y+x4, Enemy_Parent, false, true);
            
            hit5 = collision_line(x, y+x5, x+y1, y+x6, Enemy_Parent, false ,true);
            hit6 = collision_line(x,y-x5,x+y1, y-x6, Enemy_Parent, false, true);
            
            hit7 = collision_line(x, y+x7, x+y1, y+x1, Enemy_Parent, false ,true);
            hit8 = collision_line(x,y-x7,x+y1, y-x1, Enemy_Parent, false, true);
    
            hit9 = collision_line(x,y,x+y1,y, Enemy_Parent, false ,true);
        }
        
    }
    else{
        hit9 = collision_line(x, y, x + lengthdir_x(160, movementAngle) , y + lengthdir_y(160, movementAngle), Enemy_Parent, false, true);
    
        hit1 = collision_line(x-x1, y, x+ lengthdir_x(160, movementAngle) - x2, y + lengthdir_y(160, movementAngle), Enemy_Parent, false, true);
        hit2 = collision_line(x+x1, y, x+ lengthdir_x(160, movementAngle) + x2, y + lengthdir_y(160, movementAngle), Item_Parent, false, true);
    
        hit3 = collision_line(x-x3,y,x-x4 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true); 
        hit4 = collision_line(x+x3,y,x+x4 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true);
        
        hit5 = collision_line(x-x5,y,x-x6 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true); 
        hit6 = collision_line(x+x5,y,x+x6 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true); 
        
        hit7 = collision_line(x-x7,y,x-x1 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true); 
        hit8 = collision_line(x+x7,y,x+x1 + lengthdir_x(160, movementAngle), y+ lengthdir_y(160, movementAngle), Enemy_Parent, false, true);
    }
    
}

else{
    isSprint = false;
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

if(place_meeting(x, y, Wall_Parent)){
    x -= 10;
}

if (hp <= 0){
    game_restart();
}
