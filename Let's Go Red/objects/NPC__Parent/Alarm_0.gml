textIndex += 1;
if(textIndex > string_length(currentMessageStruct.text)){
    if(currentMessageStruct[$ "endFunc"] != undefined){
        currentMessageStruct.endFunc();
    }
    return;
}

var currentChar = string_char_at(currentMessageStruct.text, textIndex);
currentDrawnText += currentChar;
alarm_set(0, getWaitTimeForCharacter(currentChar));
//show_debug_message(currentDrawnText);