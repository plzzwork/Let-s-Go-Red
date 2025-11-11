//Settings/Global
pauseMenuEnabled = false;           //Yeah
pauseSelectionIndex = 0;            //Index of currently selected menu thing

autoScrollDelay = 0.3;              //Delay before autoscroll begins
autoScrollAutoScrollRate = 0.1;     //Delay between each autoscroll

//Internal
timePausedFor = 0;                  //Time pause menu has been opened
autoScrollTimer = 0;                //Internal clock for autoscroll
autoScrollTarget = 0;               //Internal target for autoscroll clock

menuOptions =  [ 
{
    optionName: "Inventory",
    openFunction: function() {}
},
{
    optionName: "Save",
    openFunction: function() {}
},
{
    optionName: "Load",
    openFunction: function() {}
},
{
    optionName: "Quit to title",
    openFunction: function(){}
},
{
    optionName: "Quit to desktop",
    openFunction: function(){}
}
];


_uniColor = shader_get_uniform(PauseMenuDarkenWorld, "u_colour");