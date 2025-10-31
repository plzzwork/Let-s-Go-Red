distToPlayer = 0;
inTalkingDistance = false;
talkingTo = noone;
debounce = false;

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

//Progress dialogue
function talk(){

    if(obj_Dialogue.talkingTo == noone || textIndex > string_length(currentMessageStruct.text)){
        obj_Dialogue.talkingTo = id;
        textIndex = 0; 
        currentDrawnText = "";
        if(conversationIndex < array_length(conversation)){ 
            currentMessageStruct = conversation[conversationIndex];
            conversationIndex += 1;
        }else{
            conversationIndex = 0;
            currentMessageStruct = {name: "", text: ""};
            obj_Dialogue.talkingTo = noone;
            obj_Dialogue.debounce = true;
            return;
        }
    }else{
        textIndex = string_length(currentMessageStruct.text);
        currentDrawnText = currentMessageStruct.text;
    }
    
    alarm_set(0, getWaitTimeForCharacter(""));
    
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