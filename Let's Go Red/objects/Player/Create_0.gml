// create runs once upon starting

walk_speed = 4; // seems type does not need to be declared
sprint_speed = 8;

tilemap = layer_tilemap_get_id("Tiles_Col");

hp = 10;
hp_total =hp;
damage = 1;
charge = 0;

//Sprint time is the total amount of seconds that the player can sprint for
sprint_time = 5;

//If winded then the player can not sprint until the sprint timer is fully filled up
winded = false;