distToPlayer = 0;
inTalkingDistance = false;

index = 0;
conversation = [];

currentMessage = "";
currentMessageStruct = {};
function talk(){
    currentMessage = "";
    currentMessageStruct = {};
    
    array_foreach(conversation, function(messageStruct){
        currentMessageStruct = messageStruct;
        currentMessage = "";
        string_foreach(currentMessageStruct.text, function(char){ 
            currentMessage += char;
            
            show_debug_message(currentMessageStruct.name + ": " + currentMessage);
        })
    } )
    
}
