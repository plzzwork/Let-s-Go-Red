pauseMenuEnabled = false;
timePausedFor = 0;
pauseSelectionIndex = 0;

_uniColor = shader_get_uniform(PauseMenuDarkenWorld, "u_colour");

menuOptions =  [
{
    optionName: "Save",
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