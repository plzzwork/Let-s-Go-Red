if(ifSpotted == false){
     draw_self();
}
else if(ifSpotted == true && spot_time > 4){
    draw_sprite(Sprite36, 0, x, y);
}
else{
    draw_sprite(Sprite37, 0, x, y);
}
