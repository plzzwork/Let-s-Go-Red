event_inherited()
obj_Dialogue.debounce = false;
spawnedItem = false;

alreadySpawnedObject = false;

instance_deactivate_object(apo_map);
conversation = [
{
    name: "You",
    text: "Hi bro.",
},
{
    name: "APO Guy",
    text: "You? Fighting Puckman? It's dangerous to go alone! Take this!",
     endFunc: function(){
        instance_activate_object(apo_map)
		spawnedItem = true;
		alreadySpawnedObject = true;
        NPC_APO.conversation = NPC_APO.conversation2;
    }
},
];


conversation2 = [
{
    name: "You",
    text: "Thanks for the map. Also, get better material. Your pop culture references suck.",
},
{
    name: "APO Guy",
    text: "You're welcome, and do you think you can do any better?",
},
]
has_map = function(_arr){
	for(var i = 0; i<array_length(_arr);i++){
		show_debug_message(_arr[i].name);
		if(_arr[i].name == "APO Map"){
			return true;
		}
	}
	return false
}

if(has_map(global.inv)){
	conversation = conversation2;
}