//up
if (keyboard_check_pressed(vk_up)){
    currentSelectedY -= slotGap + spriteSide;
    currentSelected -= maxRow;
    //show_debug_message("placeB: {0} Selected: {1}", currentSelectedY, currentSelected);
    //out of bounds wrapping
    //if (currentSelected < 0){
        //currentSelected = global.numSlots - currentSelected + 1;
        //currentSelectedY = (yloc + BGheight/2) - currentSelectedY;
    //}
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}
//down
else if (keyboard_check_pressed(vk_down)){
    currentSelectedY += slotGap + spriteSide;
    currentSelected += maxRow;
    //show_debug_message("placeB: {0} Selected: {1}", currentSelectedY, currentSelected);
    //out of bounds wrapping
    //if (currentSelected > global.numSlots){
        //currentSelected = global.numSlots - currentSelected + 1;
        //currentSelectedY = (yloc + BGheight/2) - currentSelectedY;
    //}
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}
//left
else if (keyboard_check_pressed(vk_left)){
    currentSelectedX -= slotGap + spriteSide;
    currentSelected--;
    //show_debug_message("placeB: {0} Selected: {1}", currentSelectedY, currentSelected);
    //out of bounds wrapping
    //if (currentSelected > global.numSlots){
        //currentSelected = global.numSlots - currentSelected + 1;
        //currentSelectedY = (yloc + BGheight/2) - currentSelectedY;
    //}
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}
//right
else if (keyboard_check_pressed(vk_right)){
    currentSelectedX += slotGap + spriteSide;
    currentSelected++;
    //show_debug_message("placeB: {0} Selected: {1}", currentSelectedY, currentSelected);
    //out of bounds wrapping
    //if (currentSelected > global.numSlots){
        //currentSelected = global.numSlots - currentSelected + 1;
        //currentSelectedY = (yloc + BGheight/2) - currentSelectedY;
    //}
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}

