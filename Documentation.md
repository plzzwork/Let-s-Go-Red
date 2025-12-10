Let's Go Red Documentation Fall 2025 (12/9/25)
The continuous documentation of all scripts in Let's Go Red. 

Some notes about gamemaker:
- keyword global sets a global variable.
- functions in scripts are naturally global.

*****SCRIPTS*****
Inventory:
1. function Inventory() is the constructor, called by object "InventoryOpener" in a given room. This constructor creates global variables for the inventory, the number of slots (size), the key cards the player has, and the maximum access level from these key cards. The key cards will be shown on a separate UI from the normal inventory, and the maximum access level will determine what doors the player can enter (just like IRL RPI).

inv: a global array of structs that hold all of the items' data, which is as follows:
- sprite: the sprite to be shown in the inventory
- name: the name of the item
- max_stack: the number of this item a single slot can hold (think 64 stacking sticks vs 16 ender pearls in minecraft)
- desc: the description of the item to be shown in the inventory
- qty: the current quantity of the item. This is updated in functions.
- consumable: a bool for whether or not the item is consumable.
- func: a variable storing a function that the item calls when used. Currently, this function MUST have 0 parameters. 

numSlots: a global integer for how many slots the player should have.
keyCardinv: a global array of structs that hold keycard data, which has ONLY sprites and an integer access level.
maxAccessLevel: a global integer determining what level of keycard access the player currently has. This gets updated in functions.

2. function ToggleInventory() creates an instance of obj_Inventory, the object holding UI elements for the inventory, or destroys an instance if it already exists.

3. function addItem(sprite, name, max_stack, desc, consumable, func) first checks the existing inventory if you are adding an item you already have to a stack (like minecraft). If the item would not exceed its max_stack, its qty field will be incremented.
Else, check for a slot in your inventory and push a new struct to the inventory struct. The fields of the item to be added is passed in the function.

4. function addKeyCard(sprite, accessLevel) adds a keycard with the parameters' fields, and checks for a new maximum access level, updating global.maxAccessLevel.

5. function removeItem(index) first checks for index to be in bounds of the inv array, then runs item[index]'s function as specified by its field. If the item is consumable, its qty will be decremented, and if there was 1 of the item, the item is removed from the inventory and the items after it are shifted by one. 

*****Objects with scripts*****
Door_Test: Keycard accessed doors
This object sets an access level to itself based on the player's keycard level. 
It has an "on player collision" event where it transports the player to the new room specified in the room_goto(TargetRoom) function if the player's maxAccessLevel is greater than or equal to the object's access level. The room to go to is specified from the room view in the editor. 

InventoryOpener: Managing opening inventory
The create event calls the Inventory constructor that creates all the fields. The end step event calls the toggleInventory() event when pressing E.

Item_Parent: Parent object for ALL items. 
(To set inheritance, scroll down in the inspector to the "Parent" tab and set where it says "No Object" to another object. This inherits all events unless overridden.)
In the create event, the sprite, name, max_stack, description, consumable true/false, and func fields are set. destroyAfterPickup specifies whether or not picking up the item will destroy it in the map. 
In the step event, the item uses the distance formula to calculate the distance between itself and the player, checks if the player is close enough with bool inTalkingDistance, and uses addItem to pick up the item, destroying it if it should. 

NOTE: Usually, all items will override the create event and keep the step event. Override an event by clicking the button with the three circles (it looks like a graph kinda)

RoomTransition: Transports the player to different rooms
This object has an "on player collision" event where it transports the player to the new room specified in the room_goto(TargetRoom) function. The room to go to is specified from the room view in the editor. 

Pickupper_Parent: Parent object for items that you pick up by hand rather than by inventory.
This object in a create event has a bool pickedUp for whether or not the item is picked up, an offset for how far above the item sprite should float above you, and a dropOffset for how in front the item is dropped.
In the step function, the item uses the distance formula to calculate the distance between itself and the playey and checks if the player is close enough with bool inTalkingDistance. If space is pressed, pickedUp is toggled, and if pickedUp is toggled off, it will set the item's position to the player's, plus dropOffset in the x direction. If pickedUp is toggled on, the item's position will be the player's, plus offset in the y direction.