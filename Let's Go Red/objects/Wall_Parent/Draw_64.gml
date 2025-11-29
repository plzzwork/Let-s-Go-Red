if(interact != id){
    return;
}

var width = display_get_gui_width();
var height = display_get_gui_height();

var _x = 0;
var _y = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _y;

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_set_font(Font_Dialogue);

draw_sprite(spr_ui_DialogueBox,0,0,0);