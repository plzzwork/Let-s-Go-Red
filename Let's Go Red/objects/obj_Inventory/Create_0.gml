//parameters for the inventory GUI:
//BGwidth and BGheight: width and height of the whole window
//slotgap: gap in pixels btwn each inventory slot
//margin: basically page margins
//maxRow: how many items can be lined up on one row
//spriteSide: side length of each slot
BGwidth = 700;
BGheight = 300;
slotGap = 20;
margin = 40;
maxRow = 3;
spriteSide = 96;

inventory = global.inv;
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(InventoryFont);

//center of screen
xloc = display_get_gui_width() / 2 - BGwidth / 2;
yloc = display_get_gui_height() / 2 - BGheight / 2;

nameLocX = xloc + 500;
nameLocY = yloc + 50;
descOffset = 25;

currentSelected = 0;
currentSelectedX = xloc + margin;
currentSelectedY = yloc + margin;
selectBorderSize = 10;