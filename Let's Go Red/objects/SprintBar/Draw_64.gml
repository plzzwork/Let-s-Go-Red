//changes the sprint bar sprite depending on what their remaining stamina is
if(percent >= 100){
    reload = false;
}

if(percent > 90 && !reload){
    sprite_index = Step10;
}
else if(80 < percent && percent <= 90  && !reload){
    sprite_index = Step9;
}
else if(70 < percent && percent <= 80 && !reload){
    sprite_index = Step8;
}
else if(60 < percent && percent <= 70 && !reload){
    sprite_index = Step7;
}
else if(50 < percent && percent <= 60 && !reload){
    sprite_index = Step6;
}
else if(40 < percent && percent <= 50 && !reload){
    sprite_index = Step5;
}
else if(30 < percent && percent <= 40 && !reload){
    sprite_index = Step4;
}
else if(20 < percent && percent <= 40 && !reload){
    sprite_index = Step3;
}
else if(10 < percent && percent <= 20 && !reload){
    sprite_index = Step2;
}
else if(0 < percent && percent <= 10 && !reload){
    sprite_index = Step1;
}
else{
    sprite_index = StepRELOAD;
    reload = true;
}