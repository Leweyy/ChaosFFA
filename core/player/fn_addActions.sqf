/*
    File: fn_addActions.sqf
    Author: Lewey

    Description:
    add all necessary actions to the player on load an respawn

*/

_isAdmin = [player] call admin_fnc_isPlayerAdmin;
if (_isAdmin) then {
	player addAction ["<t color='#FF0000'>[Admin]</t> Menu", { call admin_fnc_initRelocateObjectiveMenu }];
};

// Remove firing in Lobby 
player addAction ["", {true}, [], 0, false, false, "DefaultAction", "player distance lobby_menu_unit < 50"];