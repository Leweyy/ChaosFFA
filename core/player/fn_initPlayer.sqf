waitUntil {!isNull player && player == player};
[0, "INITIALIZING CLIENT"] call mav_introcam_fnc_updateCinematicStatus;
sleep 1;

//init name tags
//[] call player_fnc_nameTags;

//Add player actions
[] call player_fnc_addActions;

//add player event handlers
[] call player_fnc_playerEH;

//put player in 3rd person 
player switchCamera "EXTERNAL";

//Disable Fatigue
player enableFatigue false;

// marker color fix for JIP
waitUntil {!isNil "currentObjective"};
currentObjective setMarkerColorLocal "ColorBlue";

//jump script
execvm "core\player\fn_jumpScript.sqf";

// update players variables by calling the get stats command, needed for admin menu
["vehicle_points","get"] call player_fnc_stats;
["kills","get"] call player_fnc_stats;
["deaths","get"] call player_fnc_stats;

[0, "CLIENT SET UP COMPLETE"] call mav_introcam_fnc_updateCinematicStatus;