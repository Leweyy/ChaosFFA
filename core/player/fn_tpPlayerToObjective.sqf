/*
    File: fn_tpPlayerToObjective.sqf
    Author: Lewey

    Description:
    teleports player to the active objective

*/

waitUntil{!isNil "currentObjective"};
_markerPos = getMarkerPos currentObjective;
_randomPos = [_markerPos, 0, 175, 0, 0, 0.9, 0, [], []] call BIS_fnc_findSafePos;

//checks to see if player is in a vehicle
if !(isNull objectParent player) then {
    vehicle player setPos _randomPos;
} else {
    player setPos _randomPos;
};