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