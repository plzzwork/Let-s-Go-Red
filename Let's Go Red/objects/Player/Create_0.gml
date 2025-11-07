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

//variables used when creating the scan lines used in the flashlight
x1 = 40;
x2 = 160;

x3 = 20;
x4 = 80;

x5 = 30;
x6 = 120;

x7 = 10;

y1 = 320;

//checks if the raycasts hit anything
hit1 = false;
hit2 = false;

hit3 = false;
hit4 = false;

hit5 = false;
hit6 = false;

hit7 = false;
hit8 = false;

hit9 = false;

//angle that the player is moving in
movementAngle = 0.0;
layer_set_visible("GameUI", true)