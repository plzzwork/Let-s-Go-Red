var _x = 0;
var _y = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _y;

draw_sprite_stretched(spr_DialogueBox,0,_x,_y,_boxw,_boxh);

draw_set_font(Font1);
var name = messages[current_msg].name;
draw_set_color(global.char_colors[$ name]);
draw_text(_x + 16, _y + 16, name);

draw_text_ext(_x + 16,_y + 56,draw_message,-1,_boxw - _x * 2);
