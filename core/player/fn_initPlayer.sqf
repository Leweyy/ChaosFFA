waitUntil {!isNull player && player == player};
[0, "INITIALIZING CLIENT"] call mav_introcam_fnc_updateCinematicStatus;
sleep 1;

//init name tags
[] call player_fnc_nameTags;

//Add player actions
[] call player_fnc_addActions;

//handle player respawn
player addEventHandler ["Respawn", {
	[] call player_fnc_addActions
}];

// marker color fix for JIP
waitUntil {!isNil "currentObjective"};
currentObjective setMarkerColor "ColorBlue";

[0, "CLIENT SET UP COMPLETE"] call mav_introcam_fnc_updateCinematicStatus;

