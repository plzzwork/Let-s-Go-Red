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
    name: "ColonV",
    text: "AMONGIS",
    endFunc: function(){
        if(NPC_ColonV.alreadySpawnedObject){return;} 
            NPC_ColonV.alreadySpawnedObject = true;
        instance_activate_object(Item);

        NPC_ColonV.conversation = NPC_ColonV.conversation2;
    }
},
];


conversation2 = [
{
    name: "You",
    text: "Thanks for the AMONGUS.",
},
{
    name: "ColonV",
    text: "No problem vro",
},
]