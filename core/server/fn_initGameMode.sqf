/*
    File: fn_initGameMode.sqf
    Author: Lewey

    Description:
    this script will be run to set up the game mode e.g setting the objective cahanging marker colors

    Parameters:
     0: _preInit | Boolean - only to be used on server start up

*/

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

sleep 300;

if !(isNil "adminRelocated") then {
    if (adminRelocated isEqualTo true) then {
        sleep 300;
        adminRelocated = false;
        publicVariable "adminRelocated";
    };
};


[] call Server_fnc_initGameMode;