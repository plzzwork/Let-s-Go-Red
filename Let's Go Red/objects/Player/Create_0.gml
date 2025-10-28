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

//Timer that stops the player from regaining stamina until 0.75 seconds after sprinting
sprint_wait_time = 0.75;

isSprint = false;

orient = 1

x1 = 40;
x2 = 160;
x3 = 20;
x4 = 80;

y1 = 320;

hit1 = false;
hit2 = false;

hit3 = false;
hit4 = false;

hit5 = false;

movementAngle = 0.0;
instance_activate_layer("GameUI")