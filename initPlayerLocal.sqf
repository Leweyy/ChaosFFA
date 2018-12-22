waitUntil {!isNull player && player == player};

//init name tags
[] call player_fnc_nameTags;

//Add player actions
[] call player_fnc_addActions;

//handle player respawn
player addEventHandler ["Respawn", {
	[] call player_fnc_addActions
}];