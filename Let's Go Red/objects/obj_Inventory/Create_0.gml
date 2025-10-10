//parameters for the inventory GUI:
//BGwidth and BGheight: width and height of the whole window
//slotgap: gap in pixels btwn each inventory slot
//margin: basically page margins
//maxRow: how many items can be lined up on one row
BGwidth = 600;
BGheight = 400;
slotGap = 20;
margin = 40;
maxRow = 3;

inventory = getInventory();
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);