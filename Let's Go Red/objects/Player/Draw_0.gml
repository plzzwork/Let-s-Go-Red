draw_self();

var _hor = keyboard_check((ord("D"))) - keyboard_check((ord("A")));
var _ver = keyboard_check((ord("S"))) - keyboard_check((ord("W")));

var movementAngle = arctan2(_ver, _hor);

movementAngle = movementAngle*(180/pi);

if(movementAngle < 0){
    movementAngle = movementAngle*-1;
}
else{
    movementAngle = (movementAngle-360)*-1;
}

if(movementAngle == 360 || movementAngle == 180){
    if(movementAngle == 180){
        draw_line_color(x, y-x1, x-y1, y-x2, c_red, c_red);
        draw_line_color(x,y-x3,x-y1,y-x4, c_red, c_red);

        draw_line_color(x, y+x1, x-y1, y+x2, c_green, c_green);
        draw_line_color(x,y+x3,x-y1, y+x4, c_green, c_green);

        draw_line_color(x,y,x-y1,y, c_black, c_black);
    }
    else{
        draw_line_color(x, y-x1, x+y1, y-x2, c_red, c_red);
        draw_line_color(x,y-x3,x+y1,y-x4, c_red, c_red);

        draw_line_color(x, y+x1, x+y1, y+x2, c_green, c_green);
        draw_line_color(x,y+x3,x+y1, y+x4, c_green, c_green);

        draw_line_color(x,y,x+y1,y, c_black, c_black);
    }
    
}
else{
    draw_line_color(x, y, x + lengthdir_x(320, movementAngle) , y + lengthdir_y(320, movementAngle), c_blue, c_blue);

    draw_line_color(x-x1, y, x+ lengthdir_x(320, movementAngle) - x2, y + lengthdir_y(320, movementAngle), c_blue, c_blue);
    draw_line_color(x+x1, y, x+ lengthdir_x(320, movementAngle) + x2, y + lengthdir_y(320, movementAngle), c_blue, c_blue);

    draw_line_color(x-x3,y,x-x4 + lengthdir_x(320, movementAngle), y+ lengthdir_y(320, movementAngle), c_red, c_red); 
    draw_line_color(x+x3,y,x+x4 + lengthdir_x(320, movementAngle), y+ lengthdir_y(320, movementAngle), c_red, c_red); 
}
