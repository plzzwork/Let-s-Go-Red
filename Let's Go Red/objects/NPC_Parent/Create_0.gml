distToPlayer = 0;
inTalkingDistance = false;

conversationIndex = 0;
textIndex = 0;
conversation = [];

punctuationWaitTimes = {};
punctuationWaitTimes[$ ","] = 0.08;
punctuationWaitTimes[$ "."] = 0.40;
punctuationWaitTimes[$ "!"] = 0.40;
punctuationWaitTimes[$ "?"] = 0.40;
defaultCharacterWaitTime = 0.035;

currentDrawnText = "";
currentMessageStruct = {name: "", text: ""};

//On NPC interacted with
function talk(){
    currentMessageStruct = {name: "", text: ""};
    
    textIndex = 0;
    if(conversationIndex < array_length(conversation)){ 
        currentMessageStruct = conversation[conversationIndex];
        conversationIndex += 1;
    }else{
        conversationIndex = 0; 
        return;
    }
    
    alarm_set(0, 1);
    
}


function getWaitTimeForCharacter(character){
    var t;
    if(punctuationWaitTimes[$ character] == undefined){
        t = defaultCharacterWaitTime;
    }else{
        t = punctuationWaitTimes[$ character];
    }
    t *= fps;
    return t;
}