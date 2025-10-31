//up
if (keyboard_check_pressed(vk_up)){
    currentSelectedY -= slotGap + spriteSide;
    currentSelected -= maxRow;
    //out of bounds wrapping
    if (currentSelected < 0){
        currentSelected = global.numSlots + currentSelected;
        //top coordinate, offset by [#rows - 1] spaces
        currentSelectedY = yloc + margin + 
        (slotGap + spriteSide)*(global.numSlots/maxRow - 1);
    }
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}
//down
else if (keyboard_check_pressed(vk_down)){
    currentSelectedY += slotGap + spriteSide;
    currentSelected += maxRow;
    //out of bounds wrapping
    if (currentSelected > global.numSlots-1){
        currentSelected = currentSelected % maxRow;
        //back to top coordinate
        currentSelectedY = yloc + margin;
    }
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedY, currentSelected);
}
//left
else if (keyboard_check_pressed(vk_left)){
    currentSelectedX -= slotGap + spriteSide;
    currentSelected--;
    //out of bounds wrapping
    if ((currentSelected+1) % maxRow == 0){
        currentSelected += maxRow;
        //leftmost coordinate, offset by [#cols - 1] spaces
        currentSelectedX = xloc + margin + 
        (slotGap + spriteSide)*(maxRow-1);
    }
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedX, currentSelected);
}
//right
else if (keyboard_check_pressed(vk_right)){
    currentSelectedX += slotGap + spriteSide;
    currentSelected++;
    if (currentSelected % maxRow == 0){
        currentSelected -= maxRow;
        //back to leftmost coordinate
        currentSelectedX = xloc + margin;
    }
    show_debug_message("placeA: {0} Selected: {1}", currentSelectedX, currentSelected);
}

if (keyboard_check_pressed(ord("V"))){ 
    show_debug_message(removeItem(currentSelected));
}