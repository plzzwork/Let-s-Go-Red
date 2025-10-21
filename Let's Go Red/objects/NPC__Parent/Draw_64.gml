var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var _x = 0;
var _y = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _y;

if(!talking){return;}

draw_sprite(spr_DialogueBox2,0,0,0);
if(currentMessageStruct.name != ""){
    draw_sprite(spr_DialogueSpeaker, 0, 0, 0);
}

draw_set_font(Font_Dialogue);

//var name = messages[current_msg].name;

var textColor = nameColors[$ currentMessageStruct.name];
textColor = textColor ?? c_black;
draw_set_color(textColor);
draw_text(_x + 20, _y - 88, currentMessageStruct.name);

draw_set_color(c_black);
draw_text_ext(_x + 20,_y,currentDrawnText,-1,_boxw - _x * 2);