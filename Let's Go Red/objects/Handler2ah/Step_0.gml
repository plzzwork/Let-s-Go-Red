time -= delta_time/1000000;

if(time < 55 && time > 45){
    if(Enemy_Sprinter_Time > 0){
        Enemy_Sprinter_Time -= delta_time/1000000;
    }
    else{
        show_debug_message("Spawned Sprinter")
        instance_create_layer(random_range(990, 1600), random_range(160, 554), "Instances", Enemy_Sprinter);
        Enemy_Sprinter_Time = random_range(2,4);
    }
}

if(time < 45 && time > 30 && observer == false){
    if(irandom_range(1, 5) == 1){
        show_debug_message("Spawned observe")
        instance_create_layer(random_range(1200, 1400), random_range(890, 1080), "Instances", Enemy_Slower);
        observer = true;
    }
}

if(time < 50 && time > 30){
    if(Enemy_Wraith_Time > 0){
        Enemy_Wraith_Time -= delta_time/1000000;
    }
    else{
        show_debug_message("show debug message");
        instance_create_layer(random_range(2000, 2500), random_range(300, 800), "Instances", Enemy_Madley);
        Enemy_Wraith_Time = random_range(2.5, 4);
    }
}