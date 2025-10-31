
function create_dialogue(msgs){
    if (instance_exists(obj_dialogue)) return;
        
    var inst = instance_create_depth(0,0,0,obj_dialogue);
    inst.messages = msgs;
    inst.current_msg = 0;
    
}

char_colors = {
    "g" : c_black,
    "You" : c_aqua
}

item1 = [
{
    name : "g",
    msg: "This is a gaodsoados"
}
,
{
    name : "g",
    msg: "It appears to be raw asf"
}
,
{
    name : "You",
    msg: "Man"
}
,
{
    name : "g",
    msg: "The food sits there as if its waiting for you to look away"
}
,
{
    name : "You",
    msg: "Rest in Peace"
}
]