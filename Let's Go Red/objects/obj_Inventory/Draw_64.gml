var xloc = display_get_gui_width() / 2 - BGwidth / 2;
var yloc = display_get_gui_height() / 2 - BGheight / 2;

draw_sprite_stretched(InventoryTest, 0, xloc, yloc, BGwidth, BGheight);

var currentX = xloc + margin;
var currentY = yloc + margin;
for (var i = 0; i < array_length(inventory); ++i){
    var item = inventory[i];
    draw_sprite(item.sprite, 0, currentX, currentY);
    currentX += slotGap;
    //wrapping rows
    if(i > 0 && i+1 % maxRow == 0){
        currentY += slotGap;
    }
}