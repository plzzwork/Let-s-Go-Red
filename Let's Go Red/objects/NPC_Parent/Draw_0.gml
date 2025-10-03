var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var _x = 0;
var _y = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _y;

//draw_sprite_stretched(spr_box,0,_x,_y,_boxw,_boxh);

draw_set_font(Font1);

//var name = messages[current_msg].name;
draw_set_color(c_black);
draw_text(_x + 16, _y + 16, currentMessageStruct.name);

draw_text_ext(_x + 56,_y + 56,currentDrawnText,-1,_boxw - _x * 2);