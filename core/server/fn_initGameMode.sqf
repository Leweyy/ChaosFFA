/*
    File: fn_initGameMode.sqf
    Author: Lewey

    Description:
    this script will be run to set up the game mode e.g setting the objective cahanging marker colors

    Parameters:
     0: _preInit | Boolean - only to be used on server start up

*/
params ["_preInit"];

_possibleObjectivePositions = [] call nodes_fnc_getNodes;
_randomObjective = selectRandom _possibleObjectivePositions;

// set old objective marker to red
if !(isNil "currentObjective") then {
    _currentObjective = currentObjective;
    _currentObjective setMarkerColor "ColorRed";
};

//set new objective
currentObjective = _randomObjective;
publicVariable "currentObjective";
currentObjective setMarkerColor "ColorBlue";

//_text = format["Objective is now %1",markerText currentObjective];
//[_text, "info", 3] call Utils_fnc_notification;

// time before objective changes
if !(isNil "_preInit") exitWith {};

//call self
sleep 300;
[] call server_fnc_initGameMode;

