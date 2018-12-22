/*
    File: fn_initGameMode.sqf
    Author: Lewey

    Description:
    this script will be run to set up the game mode e.g setting the objective cahanging marker colors 

*/

private _possibleObjectivePositions = [] call nodes_fnc_getNodes;
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

// time before objective changes
sleep 300;
//call self
[] call server_fnc_initGameMode;