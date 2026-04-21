event_inherited()

spawnedItem = false;

alreadySpawnedObject = false;

instance_deactivate_object(Item);
conversation = [
{
    name: "You",
    text: "Hi bro.",
},
{
    name: "President of the Union",
    text: "How's it going",
    endFunc: function(){

        NPC_President.conversation = NPC_President.conversation2;
    }
},
];


conversation2 = [
{
    name: "You",
    text: "Not much, how about you?",
},
{
    name: "President of the Union",
    text: "I'm good. Also, have you picked up the school map yet?",
},
]

conversation3 = [
{
    name: "You",
    text: "Hi Bro.",
},
{
    name: "President of the Union",
    text: "Wait, you already have the map? Please say you didn't skip my earlier conversation.",
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
	conversation = conversation3;
}