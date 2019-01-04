/*
    File: fn_hudCreate.sqf
    Author: Lewey

    Description:
    creates player hud

*/

cutRsc ["chaos_player_hud","PLAIN"];
disableSerialization;

waitUntil {!isNil "currentObjective"};

_hudDisplay = uiNamespace getVariable "chaos_player_hud";
_ctrlObjectivePicture = _hudDisplay displayCtrl 6401;
_ctrlObjectiveName = _hudDisplay displayCtrl 6402;
_ctrlNotification = _hudDisplay displayCtrl 6403;

_ctrlObjectiveName ctrlSetText (markerText currentObjective);
_ctrlNotification ctrlSetText "";

