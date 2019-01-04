/*
    File: fn_hudUpdate.sqf
    Author: Lewey

    Description:
    creates player hud

	Parameters:
		0: type - type of update
			value: 1 - just update objective name
			value: 2 - update notification
		1: text - only required for type option 2
*/
params ["_type","_text"];

_hudDisplay = uiNamespace getVariable "chaos_player_hud";

waitUntil {!isNil "_hudDisplay"};
waitUntil {!isNil "currentObjective"};

_ctrlObjectiveName = _hudDisplay displayCtrl 6402;
_ctrlNotification = _hudDisplay displayCtrl 6403;

if (isNil "_type") exitWith{};

switch (_type) do {
    case 1: {
        _ctrlObjectiveName ctrlSetText (markerText currentObjective);
    };
	case 2: {
        _ctrlNotification ctrlSetText _text;
    };
};




