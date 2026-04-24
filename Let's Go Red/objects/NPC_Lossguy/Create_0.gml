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
    name: "Loss Guy",
    text: "Please don't talk to me. I'm dead.",
    endFunc: function(){
        

        NPC_Lossguy.conversation = NPC_Lossguy.conversation2;
    }
},
];


conversation2 = [
{
    name: "You",
    text: "What Happened?",
},
{
    name: "SISMan",
    text: "My thing. SUFFER!!!!!!!!!!!!!!!!!!!!",
	endFunc: function(){
       
        NPC_Lossguy.conversation = NPC_Lossguy.conversation1;
    }
},
]
conversation1 = [
{
    name: "You",
    text: "Hi bro.",
},
{
    name: "Loss Guy",
    text: "What the heck did I just tell you five seconds ago? I'm dead!",
    endFunc: function(){
        

        NPC_Lossguy.conversation = NPC_Lossguy.conversation2;
    }
},
];