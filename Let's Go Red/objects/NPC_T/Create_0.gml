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
    name: "Grand Marhsal",
    text: "So, you know exactly what's happening with SISman and Puckman. Cool.",
    endFunc: function(){
        NPC_T.conversation = NPC_T.conversation2
    }
},
];


conversation2 = [
{
    name: "You",
    text: "I can take him. I'm the winshield and he's the fly.",
},
{
    name: "Grand Marshal",
    text: "No.",
	endFunc: function(){
        NPC_T.conversation = NPC_T.conversation3
    }
},
]

conversation3 = [
{
    name: "You",
    text: "Pleeeeeeeeeeeeeeeeeeeease? You're running out of food and students that look up to you on the daily.",
},
{
    name: "Grand Marshal",
    text: "Better misplaced confidence than none at all, I guess. Go for it, kid.",
},
]