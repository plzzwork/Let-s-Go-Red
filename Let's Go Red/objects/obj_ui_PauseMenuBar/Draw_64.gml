if(!pauseMenuEnabled){
    timePausedFor -= (delta_time/1000000)
}else{
    timePausedFor += delta_time/1000000
}

var animDuration = 0.2;
timePausedFor = clamp(timePausedFor, 0, animDuration);
var t = timePausedFor/animDuration;

if(t == 0){return;}

shader_set(PauseMenuDarkenWorld);
shader_set_uniform_f_array(_uniColor, [0.0, 0.0, 0.0, t * 0.75]);
draw_sprite_stretched(WhitePixel, 0, 0, 0, window_get_width(), window_get_height());
draw_sprite(WhitePixel, 0, 0, 0);
shader_reset();

var pauseBackground = spr_ui_PauseMenuBar;
var scaleFactor = window_get_height()/sprite_get_height(pauseBackground);
var sprWidth = sprite_get_width(pauseBackground) * scaleFactor;
var sprHeight = sprite_get_height(pauseBackground) * scaleFactor;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
x = -sprWidth * (1 - t);
y = 0;
draw_sprite_stretched(pauseBackground, 0, x, y,  sprWidth, sprHeight);

draw_set_halign(fa_center);
draw_sprite_stretched_ext(WhitePixel, 0,
x + sprWidth * 0.1, 50 + pauseSelectionIndex * 55,sprWidth * 0.8, 50,
make_colour_rgb(248,236,236), 0.5 + 0.5 * abs(sin((get_timer()/1000000) * 2)));
draw_set_colour(c_black);
for(var i = 0; i < array_length(menuOptions); i ++){
    draw_set_font(Font_MenuButton)
    draw_text(x + sprWidth/2, 50 + i * 55, menuOptions[i].optionName);
}