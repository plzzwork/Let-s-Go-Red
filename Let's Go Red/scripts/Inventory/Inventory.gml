function Inventory(){
    global.inv = [];
    numSlots = 5;
}

function ToggleInventory(){
    if (instance_exists(obj_Inventory)){
        instance_destroy(obj_Inventory);
        return;
    }
    instance_create_depth(0, 0, 200, obj_Inventory);
}

function getInventory(){
    return inv;
}

function addItem(sprite, name, max_stack, desc){
    //adding stacks of an item
    for (var i = 0; i < array_length(inv); ++i){
        if (inv[i].name == name && inv[i].qty + 1 <= inv[i].max_stack){
            inv[i].qty++;
            return "Added existing item to inventory";
        }
    }
    
    //adding a new item
    //dont add anything over the inventory limit
    if (array_length(inv) == numSlots){
        return "Inventory is Full!";
    }
    array_push(inv,{
        sprite: sprite,
        name: name,
        max_stack: max_stack,
        desc: desc,
        qty: 1
    }) 
    return "Added Item!";
}