draw_sprite_stretched(InventoryTest, 0, xloc, yloc, BGwidth, BGheight);
//selector
var centering = selectBorderSize / 2;
draw_sprite_stretched(Select, 0, 
currentSelectedX - centering, currentSelectedY - centering,
spriteSide+selectBorderSize, spriteSide+selectBorderSize);

//drawing item name and description
if (currentSelected < array_length(inventory)){
    draw_text(nameLocX, nameLocY, inventory[currentSelected].name);
    draw_text(nameLocX, nameLocY + descOffset, inventory[currentSelected].desc);
}

var currentX = xloc + margin;
var currentY = yloc + margin;
for (var i = 0; i < array_length(inventory); ++i){
    var item = inventory[i];
    draw_sprite_stretched(item.sprite, 0,currentX, currentY, spriteSide, spriteSide);
    draw_text(currentX, currentY, item.qty);
    currentX += slotGap + spriteSide;
    //wrapping rows
    if(i > 0 && (i+1) % maxRow == 0){
        currentX = xloc + margin;
        currentY += slotGap + spriteSide;
    }
}

