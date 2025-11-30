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

/*distToPlayer = 0;
interact = noone;

talking_distance = false;

info = [];
textIndex = -1;

text = "";
text_prog = 0;
text_len = 0;
text_spd = 0.6;

width = display_get_gui_width();
height = display_get_gui_height();

setTop = function(topic){
    actions = global.topics[$ topic];
    textindex = -1;
    
    next();
}

next = function(){
    textIndex++;
    if(textIndex >= array_length(info)){
        instance_destroy();
    }
    else{
        actions[textIndex].act(id);
    }
}

setText = function(newText){
    text = newText;
    text_len = string_length(newText);
    text_prog = 0;
}

function type(x, y, text, progress, width){
    var draw_x = 0;
    var draw_y = 0;
    
    for(var i = 1; i <= progress; i++){
        var char = string_char_at(text, i);
        
        //Handle lines breaks
        if(char == "\n"){
            draw_x = 0;
            draw_y += string_height("A");
        }
        else if(char == " "){
            draw_x += string_width(char);
            
            var word_width = 0;
            for(var j = i + 1; j <= string_length(text); j++){
                var word_char = string_char_at(text, j);
                
                if(word_char == "\n" || word_char == " "){
                    break;
                }
                
                word_width += string_width(word_char);
                if(draw_x + word_width > width){
                    draw_x = 0;
                    draw_y += string_height("A");break;
                }
            }
        }
        
        
        //Draws the text
        else{
            draw_text(x + draw_x, y + draw_y, char);
            draw_x += string_width(char);
        }
        
    }
}*/