distToPlayer = 0;
inTalkingDistance = false;
talking = false;

conversationIndex = 0;
textIndex = 0;
conversation = [];

punctuationWaitTimes = {};
punctuationWaitTimes[$ ","] = 0.12;
punctuationWaitTimes[$ "."] = 0.30;
punctuationWaitTimes[$ "!"] = 0.30;
punctuationWaitTimes[$ "?"] = 0.30;
defaultCharacterWaitTime = 0.035;

currentDrawnText = "";
currentMessageStruct = {name: "", text: ""};

//On NPC interacted with
function talk(){

    if(!talking or textIndex > string_length(currentMessageStruct.text)){
        talking = true;
        textIndex = 0; 
        currentDrawnText = "";
        if(conversationIndex < array_length(conversation)){ 
            currentMessageStruct = conversation[conversationIndex];
            conversationIndex += 1;
        }else{
            conversationIndex = 0;
            currentMessageStruct = {name: "", text: ""};
            talking = false;
            return;
        }
    }else{
        textIndex = string_length(currentMessageStruct.text);
        currentDrawnText = currentMessageStruct.text;
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