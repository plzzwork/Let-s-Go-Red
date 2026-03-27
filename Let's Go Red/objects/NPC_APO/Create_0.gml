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
    name: "APO Guy",
    text: "You? Fighting Puckman? It's dangerous to go alone! Take this!",
     endFunc: function(){
        

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