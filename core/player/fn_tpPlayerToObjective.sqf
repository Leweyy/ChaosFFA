/*
    File: fn_tpPlayerToObjective.sqf
    Author: Lewey

    Description:
    teleports player to the active objective

*/

waitUntil{!isNil "currentObjective"};
hint format["Teleporting to %1",currentObjective];
_markerPos = getMarkerPos currentObjective;
_randomPos = [_markerPos, 25, 250, 0, 0, 0.7, 0, [], []] call BIS_fnc_findSafePos;
player setPos _randomPos;
