function Inventory(){
    global.inv = [];
    global.numSlots = 6;
}

function ToggleInventory(){
    if (instance_exists(obj_Inventory)){
        instance_destroy(obj_Inventory);
        return;
    }
    instance_create_depth(0, 0, 200, obj_Inventory);
}

function addItem(sprite, name, max_stack, desc, consumable, func){
    //adding stacks of an item
    for (var i = 0; i < array_length(global.inv); ++i){
        if (global.inv[i].name == name && global.inv[i].qty + 1 <= global.inv[i].max_stack){
            global.inv[i].qty++;
            return "Added existing item to inventory";
        }
    }
    
    //adding a new item
    //dont add anything over the inventory limit
    if (array_length(global.inv) == global.numSlots){
        return "Inventory is Full!";
    }
    array_push(global.inv,{
        sprite: sprite,
        name: name,
        max_stack: max_stack,
        desc: desc,
        qty: 1,
        consumable: false,
        func: func
    }) 
    return "Added Item!";
}

function removeItem(index){
    if (index >= array_length(global.inv)){
        return "index out of bounds";
    }
    var item = global.inv[index];
    item.func();
    if (!item.consumable)
        return "Non-consumable Item!";
    //take away one
    if (global.inv[index].qty > 1){
        global.inv[index].qty--;
        ToggleInventory();
        return "took away one item";
    }
    //completely remove
    else{
        array_delete(global.inv, index, 1);
        ToggleInventory();
        return "took away entire item";
    }
}