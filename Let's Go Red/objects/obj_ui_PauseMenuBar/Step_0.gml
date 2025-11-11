if(keyboard_check_pressed(vk_escape)){
    pauseMenuEnabled = !pauseMenuEnabled;
    if(pauseMenuEnabled){pauseSelectionIndex = 0;}
}

if(!pauseMenuEnabled){return;}
    
var scrollDirection = 0;
if(keyboard_check(vk_down)){scrollDirection = 1;} 
    else if(keyboard_check(vk_up)){scrollDirection = -1;}
        
if(scrollDirection == 0){
    autoScrollTarget = 0;
    autoScrollTimer = 0;
    return;
}

if(autoScrollTimer >= autoScrollTarget){
    if(autoScrollTimer == 0){
        autoScrollTarget += autoScrollDelay;
    }else{
        autoScrollTarget += autoScrollAutoScrollRate;
    }
    pauseSelectionIndex = clamp(pauseSelectionIndex + scrollDirection, 0, array_length(menuOptions) - 1);
}    
autoScrollTimer += delta_time/1000000;

