/*
    File: fn_addActions.sqf
    Author: Lewey

    Description:
    add all necessary actions to the player on load an respawn

*/

// Remove firing in Lobby 
player addAction ["", {true}, [], 0, false, false, "DefaultAction", "player distance lobby_menu_unit < 50"];