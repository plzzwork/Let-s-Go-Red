//changes the sprint bar sprite depending on what their remaining stamina is
if(percent >= 100){
    reload = false;
}
var spriteToDraw = undefined;

if(percent > 90 && !reload){
    spriteToDraw = Step10;
}
else if(80 < percent && percent <= 90  && !reload){
    spriteToDraw = Step9;
}
else if(70 < percent && percent <= 80 && !reload){
    spriteToDraw = Step8;
}
else if(60 < percent && percent <= 70 && !reload){
    spriteToDraw = Step7;
}
else if(50 < percent && percent <= 60 && !reload){
    spriteToDraw = Step6;
}
else if(40 < percent && percent <= 50 && !reload){
    spriteToDraw = Step5;
}
else if(30 < percent && percent <= 40 && !reload){
    spriteToDraw = Step4;
}
else if(20 < percent && percent <= 40 && !reload){
    spriteToDraw = Step3;
}
else if(10 < percent && percent <= 20 && !reload){
    spriteToDraw = Step2;
}
else if(0 < percent && percent <= 10 && !reload){
    spriteToDraw = Step1;
}
else{
    spriteToDraw = StepRELOAD;
    reload = true;
}

sprite_index = spriteToDraw;
draw_self();